// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dwcopy_command_default_value.dart';

/// DW Copy Command settings.
class DWCopyCommandSettings {
  /// Additional options directly passed to SQL DW in Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalOptions": { "MAXERRORS": "1000", "DATEFORMAT": "'ymd'" }
  final pulumi.Input<Map<String, String>>? additionalOptions;
  /// Specifies the default values for each target column in SQL DW. The default values in the property overwrite the DEFAULT constraint set in the DB, and identity column cannot have a default value. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<List<DWCopyCommandDefaultValue>>? defaultValues;

  /// Creates a new [DWCopyCommandSettings].
  /// [additionalOptions] Additional options directly passed to SQL DW in Copy Command. Type: key value pairs (value should be string type) (or Expression with resultType object). Example: "additionalOptions": { "MAXERRORS": "1000", "DATEFORMAT": "'ymd'" }
  /// [defaultValues] Specifies the default values for each target column in SQL DW. The default values in the property overwrite the DEFAULT constraint set in the DB, and identity column cannot have a default value. Type: array of objects (or Expression with resultType array of objects).
  DWCopyCommandSettings({
    this.additionalOptions,
    this.defaultValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOptions': ?additionalOptions,
      'defaultValues': ?pulumi.Input.mapOptionalInputValue<List<DWCopyCommandDefaultValue>, List<Map<String, dynamic>>>(defaultValues, (value) => pulumi.Input.encodeList<DWCopyCommandDefaultValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DWCopyCommandSettings.fromMap(Map<String, dynamic> map) {
    return DWCopyCommandSettings(
      additionalOptions: (() { final guardedValue = map['additionalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultValues: (() { final guardedValue = map['defaultValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DWCopyCommandDefaultValue>(guardedValue, (value) => DWCopyCommandDefaultValue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

