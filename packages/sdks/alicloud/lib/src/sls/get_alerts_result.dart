// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alerts_alert.dart';

/// Result data returned by getAlerts.
class GetAlertsResult {
  /// A list of Alert Entries. Each element contains the following attributes:
  final List<GetAlertsAlert> alerts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Alert IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Alerts.
  final List<String> names;
  final String? outputFile;
  final String projectName;

  /// Creates a new [GetAlertsResult].
  /// [alerts] A list of Alert Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Alert IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Alerts.
  /// [outputFile] Optional.
  /// [projectName] Required.
  GetAlertsResult({
    required this.alerts,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': pulumi.Input.encodeList<GetAlertsAlert, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'projectName': projectName,
    };
  }

  factory GetAlertsResult.fromMap(Map<String, dynamic> map) {
    return GetAlertsResult(
      alerts: pulumi.Input.decodeList<GetAlertsAlert>(map['alerts']!, (value) => GetAlertsAlert.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projectName: map['projectName'] as String,
    );
  }
}

