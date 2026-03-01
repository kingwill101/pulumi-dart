// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_oss_scan_config_oss_scan_config_args_doc}
/// The set of arguments for OssScanConfig.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_oss_scan_config_oss_scan_config_args_doc}
class OssScanConfigArgs {
  /// Specifies whether to match the prefixes of all objects.
  final pulumi.Input<bool>? allKeyPrefix;
  /// The names of the buckets.
  final pulumi.Input<List<String>> bucketNameLists;
  /// The maximum number of objects that can be extracted during decompression. Valid values: 1 to 1000. If the maximum number of objects that can be extracted is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  final pulumi.Input<int>? decompressMaxFileCount;
  /// The maximum number of decompression levels when multi-level packages are decompressed. Valid values: 1 to 5. If the maximum number of decompression levels is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  final pulumi.Input<int>? decompressMaxLayer;
  /// The decryption methods.
  final pulumi.Input<List<String>>? decryptionLists;
  /// Indicates whether the check policy is enabled. Valid values:
  final pulumi.Input<int> enable;
  /// The end time of the check. The time is in the HH:mm:ss format.
  final pulumi.Input<String> endTime;
  /// The prefixes of the objects.
  final pulumi.Input<List<String>>? keyPrefixLists;
  /// The suffixes of the objects that are checked.
  final pulumi.Input<List<String>> keySuffixLists;
  /// The timestamp when the object was last modified. The time must be later than the timestamp that you specify. Unit: milliseconds.
  final pulumi.Input<int>? lastModifiedStartTime;
  /// The policy name.
  final pulumi.Input<String>? ossScanConfigName;
  /// The days when the check is performed. The value indicates the days of the week.
  final pulumi.Input<List<int>> scanDayLists;
  /// The start time of the check. The time is in the HH:mm:ss format.
  final pulumi.Input<String> startTime;

  /// Creates a new [OssScanConfigArgs].
  /// [allKeyPrefix] Specifies whether to match the prefixes of all objects.
  /// [bucketNameLists] The names of the buckets.
  /// [decompressMaxFileCount] The maximum number of objects that can be extracted during decompression. Valid values: 1 to 1000. If the maximum number of objects that can be extracted is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  /// [decompressMaxLayer] The maximum number of decompression levels when multi-level packages are decompressed. Valid values: 1 to 5. If the maximum number of decompression levels is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  /// [decryptionLists] The decryption methods.
  /// [enable] Indicates whether the check policy is enabled. Valid values:
  /// [endTime] The end time of the check. The time is in the HH:mm:ss format.
  /// [keyPrefixLists] The prefixes of the objects.
  /// [keySuffixLists] The suffixes of the objects that are checked.
  /// [lastModifiedStartTime] The timestamp when the object was last modified. The time must be later than the timestamp that you specify. Unit: milliseconds.
  /// [ossScanConfigName] The policy name.
  /// [scanDayLists] The days when the check is performed. The value indicates the days of the week.
  /// [startTime] The start time of the check. The time is in the HH:mm:ss format.
  OssScanConfigArgs({
    bool? allKeyPrefix,
    required List<String> bucketNameLists,
    int? decompressMaxFileCount,
    int? decompressMaxLayer,
    List<String>? decryptionLists,
    required int enable,
    required String endTime,
    List<String>? keyPrefixLists,
    required List<String> keySuffixLists,
    int? lastModifiedStartTime,
    String? ossScanConfigName,
    required List<int> scanDayLists,
    required String startTime,
  }) :
      allKeyPrefix = pulumi.Input.asOptionalInput<bool>(allKeyPrefix),
      bucketNameLists = pulumi.Input.asInput<List<String>>(bucketNameLists),
      decompressMaxFileCount = pulumi.Input.asOptionalInput<int>(decompressMaxFileCount),
      decompressMaxLayer = pulumi.Input.asOptionalInput<int>(decompressMaxLayer),
      decryptionLists = pulumi.Input.asOptionalInput<List<String>>(decryptionLists),
      enable = pulumi.Input.asInput<int>(enable),
      endTime = pulumi.Input.asInput<String>(endTime),
      keyPrefixLists = pulumi.Input.asOptionalInput<List<String>>(keyPrefixLists),
      keySuffixLists = pulumi.Input.asInput<List<String>>(keySuffixLists),
      lastModifiedStartTime = pulumi.Input.asOptionalInput<int>(lastModifiedStartTime),
      ossScanConfigName = pulumi.Input.asOptionalInput<String>(ossScanConfigName),
      scanDayLists = pulumi.Input.asInput<List<int>>(scanDayLists),
      startTime = pulumi.Input.asInput<String>(startTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allKeyPrefix': ?allKeyPrefix,
      'bucketNameLists': bucketNameLists,
      'decompressMaxFileCount': ?decompressMaxFileCount,
      'decompressMaxLayer': ?decompressMaxLayer,
      'decryptionLists': ?decryptionLists,
      'enable': enable,
      'endTime': endTime,
      'keyPrefixLists': ?keyPrefixLists,
      'keySuffixLists': keySuffixLists,
      'lastModifiedStartTime': ?lastModifiedStartTime,
      'ossScanConfigName': ?ossScanConfigName,
      'scanDayLists': scanDayLists,
      'startTime': startTime,
    };
  }

  factory OssScanConfigArgs.fromMap(Map<String, dynamic> map) {
    return OssScanConfigArgs(
      allKeyPrefix: map['allKeyPrefix'] == null ? null : map['allKeyPrefix'] as bool,
      bucketNameLists: (map['bucketNameLists'] as List).cast<String>(),
      decompressMaxFileCount: map['decompressMaxFileCount'] == null ? null : map['decompressMaxFileCount'] as int,
      decompressMaxLayer: map['decompressMaxLayer'] == null ? null : map['decompressMaxLayer'] as int,
      decryptionLists: map['decryptionLists'] == null ? null : (map['decryptionLists'] as List).cast<String>(),
      enable: map['enable'] as int,
      endTime: map['endTime'] as String,
      keyPrefixLists: map['keyPrefixLists'] == null ? null : (map['keyPrefixLists'] as List).cast<String>(),
      keySuffixLists: (map['keySuffixLists'] as List).cast<String>(),
      lastModifiedStartTime: map['lastModifiedStartTime'] == null ? null : map['lastModifiedStartTime'] as int,
      ossScanConfigName: map['ossScanConfigName'] == null ? null : map['ossScanConfigName'] as String,
      scanDayLists: (map['scanDayLists'] as List).cast<int>(),
      startTime: map['startTime'] as String,
    );
  }
}

