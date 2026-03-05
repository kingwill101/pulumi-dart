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
      allKeyPrefix: (() { final guardedValue = map['allKeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bucketNameLists: (() { final guardedValue = map['bucketNameLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      decompressMaxFileCount: (() { final guardedValue = map['decompressMaxFileCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      decompressMaxLayer: (() { final guardedValue = map['decompressMaxLayer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      decryptionLists: (() { final guardedValue = map['decryptionLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPrefixLists: (() { final guardedValue = map['keyPrefixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keySuffixLists: (() { final guardedValue = map['keySuffixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      lastModifiedStartTime: (() { final guardedValue = map['lastModifiedStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ossScanConfigName: (() { final guardedValue = map['ossScanConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanDayLists: (() { final guardedValue = map['scanDayLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

