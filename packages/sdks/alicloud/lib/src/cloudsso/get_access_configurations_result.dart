// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_configurations_configuration.dart';

/// Result data returned by getAccessConfigurations.
class GetAccessConfigurationsResult {
  final List<GetAccessConfigurationsConfiguration> configurations;
  final String directoryId;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetAccessConfigurationsResult].
  /// [configurations] Required.
  /// [directoryId] Required.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  GetAccessConfigurationsResult({
    required this.configurations,
    required this.directoryId,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': pulumi.Input.encodeList<GetAccessConfigurationsConfiguration, Map<String, dynamic>>(configurations, (value) => value.toMap()),
      'directoryId': directoryId,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccessConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetAccessConfigurationsResult(
      configurations: pulumi.Input.decodeList<GetAccessConfigurationsConfiguration>(map['configurations']!, (value) => GetAccessConfigurationsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      directoryId: map['directoryId'] as String,
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

