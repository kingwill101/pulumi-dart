// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_transformer_transformer_config_add_keys.dart';
import 'log_transformer_transformer_config_copy_value.dart';
import 'log_transformer_transformer_config_csv.dart';
import 'log_transformer_transformer_config_date_time_converter.dart';
import 'log_transformer_transformer_config_delete_key.dart';
import 'log_transformer_transformer_config_grok.dart';
import 'log_transformer_transformer_config_list_to_map.dart';
import 'log_transformer_transformer_config_lower_case_string.dart';
import 'log_transformer_transformer_config_move_key.dart';
import 'log_transformer_transformer_config_parse_cloudfront.dart';
import 'log_transformer_transformer_config_parse_json.dart';
import 'log_transformer_transformer_config_parse_key_value.dart';
import 'log_transformer_transformer_config_parse_postgres.dart';
import 'log_transformer_transformer_config_parse_route53.dart';
import 'log_transformer_transformer_config_parse_to_ocsf.dart';
import 'log_transformer_transformer_config_parse_vpc.dart';
import 'log_transformer_transformer_config_parse_waf.dart';
import 'log_transformer_transformer_config_rename_key.dart';
import 'log_transformer_transformer_config_split_string.dart';
import 'log_transformer_transformer_config_substitute_string.dart';
import 'log_transformer_transformer_config_trim_string.dart';
import 'log_transformer_transformer_config_type_converter.dart';
import 'log_transformer_transformer_config_upper_case_string.dart';

class LogTransformerTransformerConfig {
  /// Adds new key-value pairs to the log event. See `add_keys` below for details.
  final pulumi.Input<LogTransformerTransformerConfigAddKeys>? addKeys;
  /// Copies values within a log event. See `copy_value` below for details.
  final pulumi.Input<LogTransformerTransformerConfigCopyValue>? copyValue;
  /// Parses comma-separated values (CSV) from the log events into columns. See `csv` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigCsv>>? csvs;
  /// Converts a datetime string into a format that you specify. See `date_time_converter` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigDateTimeConverter>>? dateTimeConverters;
  /// Deletes entry from a log event. See `delete_keys` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigDeleteKey>>? deleteKeys;
  /// Parses and structures unstructured data by using pattern matching. See `grok` below for details.
  final pulumi.Input<LogTransformerTransformerConfigGrok>? grok;
  /// Converts list of objects that contain key fields into a map of target keys. See `list_to_map` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigListToMap>>? listToMaps;
  /// Converts a string to lowercase. See `lower_case_string` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigLowerCaseString>>? lowerCaseStrings;
  /// Moves a key from one field to another. See `move_keys` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigMoveKey>>? moveKeys;
  /// Parses CloudFront vended logs, extracts fields, and converts them into JSON format. See `parse_cloudfront` below for details.
  final pulumi.Input<LogTransformerTransformerConfigParseCloudfront>? parseCloudfront;
  /// Parses log events that are in JSON format. See `parse_json` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigParseJson>>? parseJsons;
  /// Parses a specified field in the original log event into key-value pairs. See `parse_key_value` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigParseKeyValue>>? parseKeyValues;
  /// Parses RDS for PostgreSQL vended logs, extracts fields, and and convert them into a JSON format. See `parse_postgres` below for details.
  final pulumi.Input<LogTransformerTransformerConfigParsePostgres>? parsePostgres;
  /// Parses Route 53 vended logs, extracts fields, and converts them into JSON format. See `parse_route53` below for details.
  final pulumi.Input<LogTransformerTransformerConfigParseRoute53>? parseRoute53;
  /// Parses logs events and converts them into Open Cybersecurity Schema Framework (OCSF) events. See `parse_to_ocsf` below for details.
  final pulumi.Input<LogTransformerTransformerConfigParseToOcsf>? parseToOcsf;
  /// Parses Amazon VPC vended logs, extracts fields, and converts them into JSON format. See `parse_vpc` below for details.
  final pulumi.Input<LogTransformerTransformerConfigParseVpc>? parseVpc;
  /// Parses AWS WAF vended logs, extracts fields, and converts them into JSON format. See `parse_waf` below for details.
  final pulumi.Input<LogTransformerTransformerConfigParseWaf>? parseWaf;
  /// Renames keys in a log event. See `rename_keys` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigRenameKey>>? renameKeys;
  /// Splits a field into an array of strings using a delimiting character. See `split_string` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigSplitString>>? splitStrings;
  /// Matches a key’s value against a regular expression and replaces all matches with a replacement string. See `substitute_string` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigSubstituteString>>? substituteStrings;
  /// Removes leading and trailing whitespace from a string. See `trim_string` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigTrimString>>? trimStrings;
  /// Converts a value type associated with the specified key to the specified type. See `type_converter` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigTypeConverter>>? typeConverters;
  /// Converts a string to uppercase. See `upper_case_string` below for details.
  final pulumi.Input<List<LogTransformerTransformerConfigUpperCaseString>>? upperCaseStrings;

  /// Creates a new [LogTransformerTransformerConfig].
  /// [addKeys] Adds new key-value pairs to the log event. See `add_keys` below for details.
  /// [copyValue] Copies values within a log event. See `copy_value` below for details.
  /// [csvs] Parses comma-separated values (CSV) from the log events into columns. See `csv` below for details.
  /// [dateTimeConverters] Converts a datetime string into a format that you specify. See `date_time_converter` below for details.
  /// [deleteKeys] Deletes entry from a log event. See `delete_keys` below for details.
  /// [grok] Parses and structures unstructured data by using pattern matching. See `grok` below for details.
  /// [listToMaps] Converts list of objects that contain key fields into a map of target keys. See `list_to_map` below for details.
  /// [lowerCaseStrings] Converts a string to lowercase. See `lower_case_string` below for details.
  /// [moveKeys] Moves a key from one field to another. See `move_keys` below for details.
  /// [parseCloudfront] Parses CloudFront vended logs, extracts fields, and converts them into JSON format. See `parse_cloudfront` below for details.
  /// [parseJsons] Parses log events that are in JSON format. See `parse_json` below for details.
  /// [parseKeyValues] Parses a specified field in the original log event into key-value pairs. See `parse_key_value` below for details.
  /// [parsePostgres] Parses RDS for PostgreSQL vended logs, extracts fields, and and convert them into a JSON format. See `parse_postgres` below for details.
  /// [parseRoute53] Parses Route 53 vended logs, extracts fields, and converts them into JSON format. See `parse_route53` below for details.
  /// [parseToOcsf] Parses logs events and converts them into Open Cybersecurity Schema Framework (OCSF) events. See `parse_to_ocsf` below for details.
  /// [parseVpc] Parses Amazon VPC vended logs, extracts fields, and converts them into JSON format. See `parse_vpc` below for details.
  /// [parseWaf] Parses AWS WAF vended logs, extracts fields, and converts them into JSON format. See `parse_waf` below for details.
  /// [renameKeys] Renames keys in a log event. See `rename_keys` below for details.
  /// [splitStrings] Splits a field into an array of strings using a delimiting character. See `split_string` below for details.
  /// [substituteStrings] Matches a key’s value against a regular expression and replaces all matches with a replacement string. See `substitute_string` below for details.
  /// [trimStrings] Removes leading and trailing whitespace from a string. See `trim_string` below for details.
  /// [typeConverters] Converts a value type associated with the specified key to the specified type. See `type_converter` below for details.
  /// [upperCaseStrings] Converts a string to uppercase. See `upper_case_string` below for details.
  LogTransformerTransformerConfig({
    this.addKeys,
    this.copyValue,
    this.csvs,
    this.dateTimeConverters,
    this.deleteKeys,
    this.grok,
    this.listToMaps,
    this.lowerCaseStrings,
    this.moveKeys,
    this.parseCloudfront,
    this.parseJsons,
    this.parseKeyValues,
    this.parsePostgres,
    this.parseRoute53,
    this.parseToOcsf,
    this.parseVpc,
    this.parseWaf,
    this.renameKeys,
    this.splitStrings,
    this.substituteStrings,
    this.trimStrings,
    this.typeConverters,
    this.upperCaseStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addKeys': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigAddKeys, Map<String, dynamic>>(addKeys, (value) => value.toMap()),
      'copyValue': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigCopyValue, Map<String, dynamic>>(copyValue, (value) => value.toMap()),
      'csvs': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigCsv>, List<Map<String, dynamic>>>(csvs, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigCsv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dateTimeConverters': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigDateTimeConverter>, List<Map<String, dynamic>>>(dateTimeConverters, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigDateTimeConverter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteKeys': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigDeleteKey>, List<Map<String, dynamic>>>(deleteKeys, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigDeleteKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'grok': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigGrok, Map<String, dynamic>>(grok, (value) => value.toMap()),
      'listToMaps': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigListToMap>, List<Map<String, dynamic>>>(listToMaps, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigListToMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lowerCaseStrings': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigLowerCaseString>, List<Map<String, dynamic>>>(lowerCaseStrings, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigLowerCaseString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'moveKeys': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigMoveKey>, List<Map<String, dynamic>>>(moveKeys, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigMoveKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parseCloudfront': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigParseCloudfront, Map<String, dynamic>>(parseCloudfront, (value) => value.toMap()),
      'parseJsons': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigParseJson>, List<Map<String, dynamic>>>(parseJsons, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigParseJson, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parseKeyValues': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigParseKeyValue>, List<Map<String, dynamic>>>(parseKeyValues, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigParseKeyValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parsePostgres': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigParsePostgres, Map<String, dynamic>>(parsePostgres, (value) => value.toMap()),
      'parseRoute53': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigParseRoute53, Map<String, dynamic>>(parseRoute53, (value) => value.toMap()),
      'parseToOcsf': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigParseToOcsf, Map<String, dynamic>>(parseToOcsf, (value) => value.toMap()),
      'parseVpc': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigParseVpc, Map<String, dynamic>>(parseVpc, (value) => value.toMap()),
      'parseWaf': ?pulumi.Input.mapOptionalInputValue<LogTransformerTransformerConfigParseWaf, Map<String, dynamic>>(parseWaf, (value) => value.toMap()),
      'renameKeys': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigRenameKey>, List<Map<String, dynamic>>>(renameKeys, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigRenameKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'splitStrings': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigSplitString>, List<Map<String, dynamic>>>(splitStrings, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigSplitString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'substituteStrings': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigSubstituteString>, List<Map<String, dynamic>>>(substituteStrings, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigSubstituteString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trimStrings': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigTrimString>, List<Map<String, dynamic>>>(trimStrings, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigTrimString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'typeConverters': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigTypeConverter>, List<Map<String, dynamic>>>(typeConverters, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigTypeConverter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'upperCaseStrings': ?pulumi.Input.mapOptionalInputValue<List<LogTransformerTransformerConfigUpperCaseString>, List<Map<String, dynamic>>>(upperCaseStrings, (value) => pulumi.Input.encodeList<LogTransformerTransformerConfigUpperCaseString, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LogTransformerTransformerConfig.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfig(
      addKeys: map['addKeys'] == null ? null : ((LogTransformerTransformerConfigAddKeys.fromMap((map['addKeys']! as Map).cast<String, dynamic>())).input()).input(),
      copyValue: map['copyValue'] == null ? null : ((LogTransformerTransformerConfigCopyValue.fromMap((map['copyValue']! as Map).cast<String, dynamic>())).input()).input(),
      csvs: map['csvs'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigCsv>(map['csvs']!, (value) => LogTransformerTransformerConfigCsv.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      dateTimeConverters: map['dateTimeConverters'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigDateTimeConverter>(map['dateTimeConverters']!, (value) => LogTransformerTransformerConfigDateTimeConverter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      deleteKeys: map['deleteKeys'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigDeleteKey>(map['deleteKeys']!, (value) => LogTransformerTransformerConfigDeleteKey.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      grok: map['grok'] == null ? null : ((LogTransformerTransformerConfigGrok.fromMap((map['grok']! as Map).cast<String, dynamic>())).input()).input(),
      listToMaps: map['listToMaps'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigListToMap>(map['listToMaps']!, (value) => LogTransformerTransformerConfigListToMap.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lowerCaseStrings: map['lowerCaseStrings'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigLowerCaseString>(map['lowerCaseStrings']!, (value) => LogTransformerTransformerConfigLowerCaseString.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      moveKeys: map['moveKeys'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigMoveKey>(map['moveKeys']!, (value) => LogTransformerTransformerConfigMoveKey.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      parseCloudfront: map['parseCloudfront'] == null ? null : ((LogTransformerTransformerConfigParseCloudfront.fromMap((map['parseCloudfront']! as Map).cast<String, dynamic>())).input()).input(),
      parseJsons: map['parseJsons'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigParseJson>(map['parseJsons']!, (value) => LogTransformerTransformerConfigParseJson.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      parseKeyValues: map['parseKeyValues'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigParseKeyValue>(map['parseKeyValues']!, (value) => LogTransformerTransformerConfigParseKeyValue.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      parsePostgres: map['parsePostgres'] == null ? null : ((LogTransformerTransformerConfigParsePostgres.fromMap((map['parsePostgres']! as Map).cast<String, dynamic>())).input()).input(),
      parseRoute53: map['parseRoute53'] == null ? null : ((LogTransformerTransformerConfigParseRoute53.fromMap((map['parseRoute53']! as Map).cast<String, dynamic>())).input()).input(),
      parseToOcsf: map['parseToOcsf'] == null ? null : ((LogTransformerTransformerConfigParseToOcsf.fromMap((map['parseToOcsf']! as Map).cast<String, dynamic>())).input()).input(),
      parseVpc: map['parseVpc'] == null ? null : ((LogTransformerTransformerConfigParseVpc.fromMap((map['parseVpc']! as Map).cast<String, dynamic>())).input()).input(),
      parseWaf: map['parseWaf'] == null ? null : ((LogTransformerTransformerConfigParseWaf.fromMap((map['parseWaf']! as Map).cast<String, dynamic>())).input()).input(),
      renameKeys: map['renameKeys'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigRenameKey>(map['renameKeys']!, (value) => LogTransformerTransformerConfigRenameKey.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      splitStrings: map['splitStrings'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigSplitString>(map['splitStrings']!, (value) => LogTransformerTransformerConfigSplitString.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      substituteStrings: map['substituteStrings'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigSubstituteString>(map['substituteStrings']!, (value) => LogTransformerTransformerConfigSubstituteString.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      trimStrings: map['trimStrings'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigTrimString>(map['trimStrings']!, (value) => LogTransformerTransformerConfigTrimString.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      typeConverters: map['typeConverters'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigTypeConverter>(map['typeConverters']!, (value) => LogTransformerTransformerConfigTypeConverter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      upperCaseStrings: map['upperCaseStrings'] == null ? null : ((pulumi.Input.decodeList<LogTransformerTransformerConfigUpperCaseString>(map['upperCaseStrings']!, (value) => LogTransformerTransformerConfigUpperCaseString.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

