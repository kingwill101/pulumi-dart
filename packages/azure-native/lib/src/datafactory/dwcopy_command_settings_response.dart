// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dwcopy_command_default_value_response.dart';

/// DW Copy Command settings.
class DWCopyCommandSettingsResponse {
  /// Additional options directly passed to SQL DW in Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalOptions": { "MAXERRORS": "1000", "DATEFORMAT": "'ymd'" }
  final Map<String, String>? additionalOptions;
  /// Specifies the default values for each target column in SQL DW. The default values in the property overwrite the DEFAULT constraint set in the DB, and identity column cannot have a default value. Type: array of objects (or Expression with resultType array of objects).
  final List<DWCopyCommandDefaultValueResponse>? defaultValues;

  /// Creates a new [DWCopyCommandSettingsResponse].
  /// [additionalOptions] Additional options directly passed to SQL DW in Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalOptions": { "MAXERRORS": "1000", "DATEFORMAT": "'ymd'" }
  /// [defaultValues] Specifies the default values for each target column in SQL DW. The default values in the property overwrite the DEFAULT constraint set in the DB, and identity column cannot have a default value. Type: array of objects (or Expression with resultType array of objects).
  DWCopyCommandSettingsResponse({
    this.additionalOptions,
    this.defaultValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOptions': ?additionalOptions,
      'defaultValues': ?defaultValues == null ? null : pulumi.Input.encodeList<DWCopyCommandDefaultValueResponse, Map<String, dynamic>>(defaultValues!, (value) => value.toMap()),
    };
  }

  factory DWCopyCommandSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DWCopyCommandSettingsResponse(
      additionalOptions: map['additionalOptions'] == null ? null : (map['additionalOptions'] as Map).cast<String, String>(),
      defaultValues: map['defaultValues'] == null ? null : pulumi.Input.decodeList<DWCopyCommandDefaultValueResponse>(map['defaultValues'], (value) => DWCopyCommandDefaultValueResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

