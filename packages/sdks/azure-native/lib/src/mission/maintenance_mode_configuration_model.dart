// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'principal.dart';

/// Maintenance Mode
class MaintenanceModeConfigurationModel {
  /// Justification for entering or exiting Maintenance Mode
  final pulumi.Input<String>? justification;
  /// Current mode of Maintenance Mode Configuration
  final pulumi.Input<String> mode;
  /// The user, group or service principal object affected by Maintenance Mode
  final pulumi.Input<List<Principal>>? principals;

  /// Creates a new [MaintenanceModeConfigurationModel].
  /// [justification] Justification for entering or exiting Maintenance Mode
  /// [mode] Current mode of Maintenance Mode Configuration
  /// [principals] The user, group or service principal object affected by Maintenance Mode
  MaintenanceModeConfigurationModel({
    this.justification,
    required this.mode,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justification': ?justification,
      'mode': mode,
      'principals': ?pulumi.Input.mapOptionalInputValue<List<Principal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<Principal, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MaintenanceModeConfigurationModel.fromMap(Map<String, dynamic> map) {
    return MaintenanceModeConfigurationModel(
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Principal>(guardedValue, (value) => Principal.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

