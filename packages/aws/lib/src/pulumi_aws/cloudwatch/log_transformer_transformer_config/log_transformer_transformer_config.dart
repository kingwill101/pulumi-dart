// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../log_transformer_transformer_config_add_keys/log_transformer_transformer_config_add_keys.dart';
import '../log_transformer_transformer_config_copy_value/log_transformer_transformer_config_copy_value.dart';
import '../log_transformer_transformer_config_csv/log_transformer_transformer_config_csv.dart';
import '../log_transformer_transformer_config_date_time_converter/log_transformer_transformer_config_date_time_converter.dart';
import '../log_transformer_transformer_config_delete_key/log_transformer_transformer_config_delete_key.dart';
import '../log_transformer_transformer_config_grok/log_transformer_transformer_config_grok.dart';
import '../log_transformer_transformer_config_list_to_map/log_transformer_transformer_config_list_to_map.dart';
import '../log_transformer_transformer_config_lower_case_string/log_transformer_transformer_config_lower_case_string.dart';
import '../log_transformer_transformer_config_move_key/log_transformer_transformer_config_move_key.dart';
import '../log_transformer_transformer_config_parse_cloudfront/log_transformer_transformer_config_parse_cloudfront.dart';
import '../log_transformer_transformer_config_parse_json/log_transformer_transformer_config_parse_json.dart';
import '../log_transformer_transformer_config_parse_key_value/log_transformer_transformer_config_parse_key_value.dart';
import '../log_transformer_transformer_config_parse_postgres/log_transformer_transformer_config_parse_postgres.dart';
import '../log_transformer_transformer_config_parse_route53/log_transformer_transformer_config_parse_route53.dart';
import '../log_transformer_transformer_config_parse_to_ocsf/log_transformer_transformer_config_parse_to_ocsf.dart';
import '../log_transformer_transformer_config_parse_vpc/log_transformer_transformer_config_parse_vpc.dart';
import '../log_transformer_transformer_config_parse_waf/log_transformer_transformer_config_parse_waf.dart';
import '../log_transformer_transformer_config_rename_key/log_transformer_transformer_config_rename_key.dart';
import '../log_transformer_transformer_config_split_string/log_transformer_transformer_config_split_string.dart';
import '../log_transformer_transformer_config_substitute_string/log_transformer_transformer_config_substitute_string.dart';
import '../log_transformer_transformer_config_trim_string/log_transformer_transformer_config_trim_string.dart';
import '../log_transformer_transformer_config_type_converter/log_transformer_transformer_config_type_converter.dart';
import '../log_transformer_transformer_config_upper_case_string/log_transformer_transformer_config_upper_case_string.dart';

class LogTransformerTransformerConfig {
  /// Adds new key-value pairs to the log event. See <span pulumi-lang-nodejs="`addKeys`" pulumi-lang-dotnet="`AddKeys`" pulumi-lang-go="`addKeys`" pulumi-lang-python="`add_keys`" pulumi-lang-yaml="`addKeys`" pulumi-lang-java="`addKeys`">`add_keys`</span> below for details.
  final LogTransformerTransformerConfigAddKeys? addKeys;

  /// Copies values within a log event. See <span pulumi-lang-nodejs="`copyValue`" pulumi-lang-dotnet="`CopyValue`" pulumi-lang-go="`copyValue`" pulumi-lang-python="`copy_value`" pulumi-lang-yaml="`copyValue`" pulumi-lang-java="`copyValue`">`copy_value`</span> below for details.
  final LogTransformerTransformerConfigCopyValue? copyValue;

  /// Parses comma-separated values (CSV) from the log events into columns. See <span pulumi-lang-nodejs="`csv`" pulumi-lang-dotnet="`Csv`" pulumi-lang-go="`csv`" pulumi-lang-python="`csv`" pulumi-lang-yaml="`csv`" pulumi-lang-java="`csv`">`csv`</span> below for details.
  final List<LogTransformerTransformerConfigCsv>? csvs;

  /// Converts a datetime string into a format that you specify. See <span pulumi-lang-nodejs="`dateTimeConverter`" pulumi-lang-dotnet="`DateTimeConverter`" pulumi-lang-go="`dateTimeConverter`" pulumi-lang-python="`date_time_converter`" pulumi-lang-yaml="`dateTimeConverter`" pulumi-lang-java="`dateTimeConverter`">`date_time_converter`</span> below for details.
  final List<LogTransformerTransformerConfigDateTimeConverter>?
      dateTimeConverters;

  /// Deletes entry from a log event. See <span pulumi-lang-nodejs="`deleteKeys`" pulumi-lang-dotnet="`DeleteKeys`" pulumi-lang-go="`deleteKeys`" pulumi-lang-python="`delete_keys`" pulumi-lang-yaml="`deleteKeys`" pulumi-lang-java="`deleteKeys`">`delete_keys`</span> below for details.
  final List<LogTransformerTransformerConfigDeleteKey>? deleteKeys;

  /// Parses and structures unstructured data by using pattern matching. See <span pulumi-lang-nodejs="`grok`" pulumi-lang-dotnet="`Grok`" pulumi-lang-go="`grok`" pulumi-lang-python="`grok`" pulumi-lang-yaml="`grok`" pulumi-lang-java="`grok`">`grok`</span> below for details.
  final LogTransformerTransformerConfigGrok? grok;

  /// Converts list of objects that contain key fields into a map of target keys. See <span pulumi-lang-nodejs="`listToMap`" pulumi-lang-dotnet="`ListToMap`" pulumi-lang-go="`listToMap`" pulumi-lang-python="`list_to_map`" pulumi-lang-yaml="`listToMap`" pulumi-lang-java="`listToMap`">`list_to_map`</span> below for details.
  final List<LogTransformerTransformerConfigListToMap>? listToMaps;

  /// Converts a string to lowercase. See <span pulumi-lang-nodejs="`lowerCaseString`" pulumi-lang-dotnet="`LowerCaseString`" pulumi-lang-go="`lowerCaseString`" pulumi-lang-python="`lower_case_string`" pulumi-lang-yaml="`lowerCaseString`" pulumi-lang-java="`lowerCaseString`">`lower_case_string`</span> below for details.
  final List<LogTransformerTransformerConfigLowerCaseString>? lowerCaseStrings;

  /// Moves a key from one field to another. See <span pulumi-lang-nodejs="`moveKeys`" pulumi-lang-dotnet="`MoveKeys`" pulumi-lang-go="`moveKeys`" pulumi-lang-python="`move_keys`" pulumi-lang-yaml="`moveKeys`" pulumi-lang-java="`moveKeys`">`move_keys`</span> below for details.
  final List<LogTransformerTransformerConfigMoveKey>? moveKeys;

  /// Parses CloudFront vended logs, extracts fields, and converts them into JSON format. See <span pulumi-lang-nodejs="`parseCloudfront`" pulumi-lang-dotnet="`ParseCloudfront`" pulumi-lang-go="`parseCloudfront`" pulumi-lang-python="`parse_cloudfront`" pulumi-lang-yaml="`parseCloudfront`" pulumi-lang-java="`parseCloudfront`">`parse_cloudfront`</span> below for details.
  final LogTransformerTransformerConfigParseCloudfront? parseCloudfront;

  /// Parses log events that are in JSON format. See <span pulumi-lang-nodejs="`parseJson`" pulumi-lang-dotnet="`ParseJson`" pulumi-lang-go="`parseJson`" pulumi-lang-python="`parse_json`" pulumi-lang-yaml="`parseJson`" pulumi-lang-java="`parseJson`">`parse_json`</span> below for details.
  final List<LogTransformerTransformerConfigParseJson>? parseJsons;

  /// Parses a specified field in the original log event into key-value pairs. See <span pulumi-lang-nodejs="`parseKeyValue`" pulumi-lang-dotnet="`ParseKeyValue`" pulumi-lang-go="`parseKeyValue`" pulumi-lang-python="`parse_key_value`" pulumi-lang-yaml="`parseKeyValue`" pulumi-lang-java="`parseKeyValue`">`parse_key_value`</span> below for details.
  final List<LogTransformerTransformerConfigParseKeyValue>? parseKeyValues;

  /// Parses RDS for PostgreSQL vended logs, extracts fields, and and convert them into a JSON format. See <span pulumi-lang-nodejs="`parsePostgres`" pulumi-lang-dotnet="`ParsePostgres`" pulumi-lang-go="`parsePostgres`" pulumi-lang-python="`parse_postgres`" pulumi-lang-yaml="`parsePostgres`" pulumi-lang-java="`parsePostgres`">`parse_postgres`</span> below for details.
  final LogTransformerTransformerConfigParsePostgres? parsePostgres;

  /// Parses Route 53 vended logs, extracts fields, and converts them into JSON format. See <span pulumi-lang-nodejs="`parseRoute53`" pulumi-lang-dotnet="`ParseRoute53`" pulumi-lang-go="`parseRoute53`" pulumi-lang-python="`parse_route53`" pulumi-lang-yaml="`parseRoute53`" pulumi-lang-java="`parseRoute53`">`parse_route53`</span> below for details.
  final LogTransformerTransformerConfigParseRoute53? parseRoute53;

  /// Parses logs events and converts them into Open Cybersecurity Schema Framework (OCSF) events. See <span pulumi-lang-nodejs="`parseToOcsf`" pulumi-lang-dotnet="`ParseToOcsf`" pulumi-lang-go="`parseToOcsf`" pulumi-lang-python="`parse_to_ocsf`" pulumi-lang-yaml="`parseToOcsf`" pulumi-lang-java="`parseToOcsf`">`parse_to_ocsf`</span> below for details.
  final LogTransformerTransformerConfigParseToOcsf? parseToOcsf;

  /// Parses Amazon VPC vended logs, extracts fields, and converts them into JSON format. See <span pulumi-lang-nodejs="`parseVpc`" pulumi-lang-dotnet="`ParseVpc`" pulumi-lang-go="`parseVpc`" pulumi-lang-python="`parse_vpc`" pulumi-lang-yaml="`parseVpc`" pulumi-lang-java="`parseVpc`">`parse_vpc`</span> below for details.
  final LogTransformerTransformerConfigParseVpc? parseVpc;

  /// Parses AWS WAF vended logs, extracts fields, and converts them into JSON format. See <span pulumi-lang-nodejs="`parseWaf`" pulumi-lang-dotnet="`ParseWaf`" pulumi-lang-go="`parseWaf`" pulumi-lang-python="`parse_waf`" pulumi-lang-yaml="`parseWaf`" pulumi-lang-java="`parseWaf`">`parse_waf`</span> below for details.
  final LogTransformerTransformerConfigParseWaf? parseWaf;

  /// Renames keys in a log event. See <span pulumi-lang-nodejs="`renameKeys`" pulumi-lang-dotnet="`RenameKeys`" pulumi-lang-go="`renameKeys`" pulumi-lang-python="`rename_keys`" pulumi-lang-yaml="`renameKeys`" pulumi-lang-java="`renameKeys`">`rename_keys`</span> below for details.
  final List<LogTransformerTransformerConfigRenameKey>? renameKeys;

  /// Splits a field into an array of strings using a delimiting character. See <span pulumi-lang-nodejs="`splitString`" pulumi-lang-dotnet="`SplitString`" pulumi-lang-go="`splitString`" pulumi-lang-python="`split_string`" pulumi-lang-yaml="`splitString`" pulumi-lang-java="`splitString`">`split_string`</span> below for details.
  final List<LogTransformerTransformerConfigSplitString>? splitStrings;

  /// Matches a key’s value against a regular expression and replaces all matches with a replacement string. See <span pulumi-lang-nodejs="`substituteString`" pulumi-lang-dotnet="`SubstituteString`" pulumi-lang-go="`substituteString`" pulumi-lang-python="`substitute_string`" pulumi-lang-yaml="`substituteString`" pulumi-lang-java="`substituteString`">`substitute_string`</span> below for details.
  final List<LogTransformerTransformerConfigSubstituteString>?
      substituteStrings;

  /// Removes leading and trailing whitespace from a string. See <span pulumi-lang-nodejs="`trimString`" pulumi-lang-dotnet="`TrimString`" pulumi-lang-go="`trimString`" pulumi-lang-python="`trim_string`" pulumi-lang-yaml="`trimString`" pulumi-lang-java="`trimString`">`trim_string`</span> below for details.
  final List<LogTransformerTransformerConfigTrimString>? trimStrings;

  /// Converts a value type associated with the specified key to the specified type. See <span pulumi-lang-nodejs="`typeConverter`" pulumi-lang-dotnet="`TypeConverter`" pulumi-lang-go="`typeConverter`" pulumi-lang-python="`type_converter`" pulumi-lang-yaml="`typeConverter`" pulumi-lang-java="`typeConverter`">`type_converter`</span> below for details.
  final List<LogTransformerTransformerConfigTypeConverter>? typeConverters;

  /// Converts a string to uppercase. See <span pulumi-lang-nodejs="`upperCaseString`" pulumi-lang-dotnet="`UpperCaseString`" pulumi-lang-go="`upperCaseString`" pulumi-lang-python="`upper_case_string`" pulumi-lang-yaml="`upperCaseString`" pulumi-lang-java="`upperCaseString`">`upper_case_string`</span> below for details.
  final List<LogTransformerTransformerConfigUpperCaseString>? upperCaseStrings;

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
    final map = <String, dynamic>{};
    final addKeysValue = addKeys;
    if (addKeysValue != null) {
      map['addKeys'] = addKeysValue.toMap();
    }
    final copyValueValue = copyValue;
    if (copyValueValue != null) {
      map['copyValue'] = copyValueValue.toMap();
    }
    final csvsValue = csvs;
    if (csvsValue != null) {
      map['csvs'] = Input.encodeList<LogTransformerTransformerConfigCsv,
          Map<String, dynamic>>(csvsValue, (value) => value.toMap());
    }
    final dateTimeConvertersValue = dateTimeConverters;
    if (dateTimeConvertersValue != null) {
      map['dateTimeConverters'] = Input.encodeList<
              LogTransformerTransformerConfigDateTimeConverter,
              Map<String, dynamic>>(
          dateTimeConvertersValue, (value) => value.toMap());
    }
    final deleteKeysValue = deleteKeys;
    if (deleteKeysValue != null) {
      map['deleteKeys'] = Input.encodeList<
          LogTransformerTransformerConfigDeleteKey,
          Map<String, dynamic>>(deleteKeysValue, (value) => value.toMap());
    }
    final grokValue = grok;
    if (grokValue != null) {
      map['grok'] = grokValue.toMap();
    }
    final listToMapsValue = listToMaps;
    if (listToMapsValue != null) {
      map['listToMaps'] = Input.encodeList<
          LogTransformerTransformerConfigListToMap,
          Map<String, dynamic>>(listToMapsValue, (value) => value.toMap());
    }
    final lowerCaseStringsValue = lowerCaseStrings;
    if (lowerCaseStringsValue != null) {
      map['lowerCaseStrings'] = Input.encodeList<
              LogTransformerTransformerConfigLowerCaseString,
              Map<String, dynamic>>(
          lowerCaseStringsValue, (value) => value.toMap());
    }
    final moveKeysValue = moveKeys;
    if (moveKeysValue != null) {
      map['moveKeys'] = Input.encodeList<LogTransformerTransformerConfigMoveKey,
          Map<String, dynamic>>(moveKeysValue, (value) => value.toMap());
    }
    final parseCloudfrontValue = parseCloudfront;
    if (parseCloudfrontValue != null) {
      map['parseCloudfront'] = parseCloudfrontValue.toMap();
    }
    final parseJsonsValue = parseJsons;
    if (parseJsonsValue != null) {
      map['parseJsons'] = Input.encodeList<
          LogTransformerTransformerConfigParseJson,
          Map<String, dynamic>>(parseJsonsValue, (value) => value.toMap());
    }
    final parseKeyValuesValue = parseKeyValues;
    if (parseKeyValuesValue != null) {
      map['parseKeyValues'] = Input.encodeList<
          LogTransformerTransformerConfigParseKeyValue,
          Map<String, dynamic>>(parseKeyValuesValue, (value) => value.toMap());
    }
    final parsePostgresValue = parsePostgres;
    if (parsePostgresValue != null) {
      map['parsePostgres'] = parsePostgresValue.toMap();
    }
    final parseRoute53Value = parseRoute53;
    if (parseRoute53Value != null) {
      map['parseRoute53'] = parseRoute53Value.toMap();
    }
    final parseToOcsfValue = parseToOcsf;
    if (parseToOcsfValue != null) {
      map['parseToOcsf'] = parseToOcsfValue.toMap();
    }
    final parseVpcValue = parseVpc;
    if (parseVpcValue != null) {
      map['parseVpc'] = parseVpcValue.toMap();
    }
    final parseWafValue = parseWaf;
    if (parseWafValue != null) {
      map['parseWaf'] = parseWafValue.toMap();
    }
    final renameKeysValue = renameKeys;
    if (renameKeysValue != null) {
      map['renameKeys'] = Input.encodeList<
          LogTransformerTransformerConfigRenameKey,
          Map<String, dynamic>>(renameKeysValue, (value) => value.toMap());
    }
    final splitStringsValue = splitStrings;
    if (splitStringsValue != null) {
      map['splitStrings'] = Input.encodeList<
          LogTransformerTransformerConfigSplitString,
          Map<String, dynamic>>(splitStringsValue, (value) => value.toMap());
    }
    final substituteStringsValue = substituteStrings;
    if (substituteStringsValue != null) {
      map['substituteStrings'] = Input.encodeList<
              LogTransformerTransformerConfigSubstituteString,
              Map<String, dynamic>>(
          substituteStringsValue, (value) => value.toMap());
    }
    final trimStringsValue = trimStrings;
    if (trimStringsValue != null) {
      map['trimStrings'] = Input.encodeList<
          LogTransformerTransformerConfigTrimString,
          Map<String, dynamic>>(trimStringsValue, (value) => value.toMap());
    }
    final typeConvertersValue = typeConverters;
    if (typeConvertersValue != null) {
      map['typeConverters'] = Input.encodeList<
          LogTransformerTransformerConfigTypeConverter,
          Map<String, dynamic>>(typeConvertersValue, (value) => value.toMap());
    }
    final upperCaseStringsValue = upperCaseStrings;
    if (upperCaseStringsValue != null) {
      map['upperCaseStrings'] = Input.encodeList<
              LogTransformerTransformerConfigUpperCaseString,
              Map<String, dynamic>>(
          upperCaseStringsValue, (value) => value.toMap());
    }
    return map;
  }

  factory LogTransformerTransformerConfig.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfig(
      addKeys: map['addKeys'] == null
          ? null
          : LogTransformerTransformerConfigAddKeys.fromMap(
              (map['addKeys'] as Map).cast<String, dynamic>()),
      copyValue: map['copyValue'] == null
          ? null
          : LogTransformerTransformerConfigCopyValue.fromMap(
              (map['copyValue'] as Map).cast<String, dynamic>()),
      csvs: map['csvs'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigCsv>(
              map['csvs'],
              (value) => LogTransformerTransformerConfigCsv.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dateTimeConverters: map['dateTimeConverters'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigDateTimeConverter>(
              map['dateTimeConverters'],
              (value) =>
                  LogTransformerTransformerConfigDateTimeConverter.fromMap(
                      (value as Map).cast<String, dynamic>())),
      deleteKeys: map['deleteKeys'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigDeleteKey>(
              map['deleteKeys'],
              (value) => LogTransformerTransformerConfigDeleteKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      grok: map['grok'] == null
          ? null
          : LogTransformerTransformerConfigGrok.fromMap(
              (map['grok'] as Map).cast<String, dynamic>()),
      listToMaps: map['listToMaps'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigListToMap>(
              map['listToMaps'],
              (value) => LogTransformerTransformerConfigListToMap.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lowerCaseStrings: map['lowerCaseStrings'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigLowerCaseString>(
              map['lowerCaseStrings'],
              (value) => LogTransformerTransformerConfigLowerCaseString.fromMap(
                  (value as Map).cast<String, dynamic>())),
      moveKeys: map['moveKeys'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigMoveKey>(
              map['moveKeys'],
              (value) => LogTransformerTransformerConfigMoveKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parseCloudfront: map['parseCloudfront'] == null
          ? null
          : LogTransformerTransformerConfigParseCloudfront.fromMap(
              (map['parseCloudfront'] as Map).cast<String, dynamic>()),
      parseJsons: map['parseJsons'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigParseJson>(
              map['parseJsons'],
              (value) => LogTransformerTransformerConfigParseJson.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parseKeyValues: map['parseKeyValues'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigParseKeyValue>(
              map['parseKeyValues'],
              (value) => LogTransformerTransformerConfigParseKeyValue.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parsePostgres: map['parsePostgres'] == null
          ? null
          : LogTransformerTransformerConfigParsePostgres.fromMap(
              (map['parsePostgres'] as Map).cast<String, dynamic>()),
      parseRoute53: map['parseRoute53'] == null
          ? null
          : LogTransformerTransformerConfigParseRoute53.fromMap(
              (map['parseRoute53'] as Map).cast<String, dynamic>()),
      parseToOcsf: map['parseToOcsf'] == null
          ? null
          : LogTransformerTransformerConfigParseToOcsf.fromMap(
              (map['parseToOcsf'] as Map).cast<String, dynamic>()),
      parseVpc: map['parseVpc'] == null
          ? null
          : LogTransformerTransformerConfigParseVpc.fromMap(
              (map['parseVpc'] as Map).cast<String, dynamic>()),
      parseWaf: map['parseWaf'] == null
          ? null
          : LogTransformerTransformerConfigParseWaf.fromMap(
              (map['parseWaf'] as Map).cast<String, dynamic>()),
      renameKeys: map['renameKeys'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigRenameKey>(
              map['renameKeys'],
              (value) => LogTransformerTransformerConfigRenameKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      splitStrings: map['splitStrings'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigSplitString>(
              map['splitStrings'],
              (value) => LogTransformerTransformerConfigSplitString.fromMap(
                  (value as Map).cast<String, dynamic>())),
      substituteStrings: map['substituteStrings'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigSubstituteString>(
              map['substituteStrings'],
              (value) =>
                  LogTransformerTransformerConfigSubstituteString.fromMap(
                      (value as Map).cast<String, dynamic>())),
      trimStrings: map['trimStrings'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigTrimString>(
              map['trimStrings'],
              (value) => LogTransformerTransformerConfigTrimString.fromMap(
                  (value as Map).cast<String, dynamic>())),
      typeConverters: map['typeConverters'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigTypeConverter>(
              map['typeConverters'],
              (value) => LogTransformerTransformerConfigTypeConverter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      upperCaseStrings: map['upperCaseStrings'] == null
          ? null
          : Input.decodeList<LogTransformerTransformerConfigUpperCaseString>(
              map['upperCaseStrings'],
              (value) => LogTransformerTransformerConfigUpperCaseString.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
