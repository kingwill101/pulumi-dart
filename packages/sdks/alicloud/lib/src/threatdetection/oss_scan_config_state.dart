// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OssScanConfig resources.
class OssScanConfigState {
  /// Specifies whether to match the prefixes of all objects.
  final pulumi.Input<bool>? allKeyPrefix;
  /// The names of the buckets.
  final pulumi.Input<List<String>>? bucketNameLists;
  /// The maximum number of objects that can be extracted during decompression. Valid values: 1 to 1000. If the maximum number of objects that can be extracted is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  final pulumi.Input<int>? decompressMaxFileCount;
  /// The maximum number of decompression levels when multi-level packages are decompressed. Valid values: 1 to 5. If the maximum number of decompression levels is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  final pulumi.Input<int>? decompressMaxLayer;
  /// The decryption methods.
  final pulumi.Input<List<String>>? decryptionLists;
  /// Indicates whether the check policy is enabled. Valid values:
  final pulumi.Input<int>? enable;
  /// The end time of the check. The time is in the HH:mm:ss format.
  final pulumi.Input<String>? endTime;
  /// The prefixes of the objects.
  final pulumi.Input<List<String>>? keyPrefixLists;
  /// The suffixes of the objects that are checked.
  final pulumi.Input<List<String>>? keySuffixLists;
  /// The timestamp when the object was last modified. The time must be later than the timestamp that you specify. Unit: milliseconds.
  final pulumi.Input<int>? lastModifiedStartTime;
  /// The policy name.
  final pulumi.Input<String>? ossScanConfigName;
  /// The days when the check is performed. The value indicates the days of the week.
  final pulumi.Input<List<int>>? scanDayLists;
  /// The start time of the check. The time is in the HH:mm:ss format.
  final pulumi.Input<String>? startTime;

  /// Creates a new [OssScanConfigState].
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
  OssScanConfigState({
    this.allKeyPrefix,
    this.bucketNameLists,
    this.decompressMaxFileCount,
    this.decompressMaxLayer,
    this.decryptionLists,
    this.enable,
    this.endTime,
    this.keyPrefixLists,
    this.keySuffixLists,
    this.lastModifiedStartTime,
    this.ossScanConfigName,
    this.scanDayLists,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allKeyPrefix': ?allKeyPrefix,
      'bucketNameLists': ?bucketNameLists,
      'decompressMaxFileCount': ?decompressMaxFileCount,
      'decompressMaxLayer': ?decompressMaxLayer,
      'decryptionLists': ?decryptionLists,
      'enable': ?enable,
      'endTime': ?endTime,
      'keyPrefixLists': ?keyPrefixLists,
      'keySuffixLists': ?keySuffixLists,
      'lastModifiedStartTime': ?lastModifiedStartTime,
      'ossScanConfigName': ?ossScanConfigName,
      'scanDayLists': ?scanDayLists,
      'startTime': ?startTime,
    };
  }

  factory OssScanConfigState.fromMap(Map<String, dynamic> map) {
    return OssScanConfigState(
      allKeyPrefix: map['allKeyPrefix'] == null ? null : (map['allKeyPrefix'] as bool).input(),
      bucketNameLists: map['bucketNameLists'] == null ? null : ((map['bucketNameLists'] as List).cast<String>()).input(),
      decompressMaxFileCount: map['decompressMaxFileCount'] == null ? null : (map['decompressMaxFileCount'] as int).input(),
      decompressMaxLayer: map['decompressMaxLayer'] == null ? null : (map['decompressMaxLayer'] as int).input(),
      decryptionLists: map['decryptionLists'] == null ? null : ((map['decryptionLists'] as List).cast<String>()).input(),
      enable: map['enable'] == null ? null : (map['enable'] as int).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      keyPrefixLists: map['keyPrefixLists'] == null ? null : ((map['keyPrefixLists'] as List).cast<String>()).input(),
      keySuffixLists: map['keySuffixLists'] == null ? null : ((map['keySuffixLists'] as List).cast<String>()).input(),
      lastModifiedStartTime: map['lastModifiedStartTime'] == null ? null : (map['lastModifiedStartTime'] as int).input(),
      ossScanConfigName: map['ossScanConfigName'] == null ? null : (map['ossScanConfigName'] as String).input(),
      scanDayLists: map['scanDayLists'] == null ? null : ((map['scanDayLists'] as List).cast<int>()).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

