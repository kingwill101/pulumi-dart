// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_file_system_lifecycle_policy.dart';
import 'get_file_system_protection.dart';

/// Result data returned by getFileSystem.
class GetFileSystemResult {
  /// ARN of the file system.
  final String? arn;
  /// The identifier of the Availability Zone in which the file system's One Zone storage classes exist.
  final String? availabilityZoneId;
  /// The Availability Zone name in which the file system's One Zone storage classes exist.
  final String? availabilityZoneName;
  final String? creationToken;
  /// DNS name for the filesystem per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final String? dnsName;
  /// Whether EFS is encrypted.
  final bool? encrypted;
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN for the KMS encryption key.
  final String? kmsKeyId;
  /// File system [lifecycle policy](https://docs.aws.amazon.com/efs/latest/ug/API_LifecyclePolicy.html) object.
  final List<GetFileSystemLifecyclePolicy>? lifecyclePolicies;
  /// The value of the file system's `Name` tag.
  final String? name;
  /// File system performance mode.
  final String? performanceMode;
  final List<GetFileSystemProtection>? protections;
  /// The throughput, measured in MiB/s, that you want to provision for the file system.
  final double? provisionedThroughputInMibps;
  final String? region;
  /// Current byte count used by the file system.
  final int? sizeInBytes;
  /// A map of tags to assign to the file system.
  final Map<String, String>? tags;
  /// Throughput mode for the file system.
  final String? throughputMode;

  /// Creates a new [GetFileSystemResult].
  /// [arn] ARN of the file system.
  /// [availabilityZoneId] The identifier of the Availability Zone in which the file system's One Zone storage classes exist.
  /// [availabilityZoneName] The Availability Zone name in which the file system's One Zone storage classes exist.
  /// [creationToken] Optional.
  /// [dnsName] DNS name for the filesystem per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [encrypted] Whether EFS is encrypted.
  /// [fileSystemId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN for the KMS encryption key.
  /// [lifecyclePolicies] File system [lifecycle policy](https://docs.aws.amazon.com/efs/latest/ug/API_LifecyclePolicy.html) object.
  /// [name] The value of the file system's `Name` tag.
  /// [performanceMode] File system performance mode.
  /// [protections] Optional.
  /// [provisionedThroughputInMibps] The throughput, measured in MiB/s, that you want to provision for the file system.
  /// [region] Optional.
  /// [sizeInBytes] Current byte count used by the file system.
  /// [tags] A map of tags to assign to the file system.
  /// [throughputMode] Throughput mode for the file system.
  const GetFileSystemResult({
    this.arn,
    this.availabilityZoneId,
    this.availabilityZoneName,
    this.creationToken,
    this.dnsName,
    this.encrypted,
    this.fileSystemId,
    this.id,
    this.kmsKeyId,
    this.lifecyclePolicies,
    this.name,
    this.performanceMode,
    this.protections,
    this.provisionedThroughputInMibps,
    this.region,
    this.sizeInBytes,
    this.tags,
    this.throughputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZoneId': ?availabilityZoneId,
      'availabilityZoneName': ?availabilityZoneName,
      'creationToken': ?creationToken,
      'dnsName': ?dnsName,
      'encrypted': ?encrypted,
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'lifecyclePolicies': ?(() { final guardedValue = lifecyclePolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFileSystemLifecyclePolicy, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'performanceMode': ?performanceMode,
      'protections': ?(() { final guardedValue = protections; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFileSystemProtection, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisionedThroughputInMibps': ?provisionedThroughputInMibps,
      'region': ?region,
      'sizeInBytes': ?sizeInBytes,
      'tags': ?tags,
      'throughputMode': ?throughputMode,
    };
  }

  factory GetFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetFileSystemResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneName: (() { final guardedValue = map['availabilityZoneName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationToken: (() { final guardedValue = map['creationToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lifecyclePolicies: (() { final guardedValue = map['lifecyclePolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFileSystemLifecyclePolicy>(guardedValue, (value) => GetFileSystemLifecyclePolicy.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      performanceMode: (() { final guardedValue = map['performanceMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protections: (() { final guardedValue = map['protections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFileSystemProtection>(guardedValue, (value) => GetFileSystemProtection.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisionedThroughputInMibps: (() { final guardedValue = map['provisionedThroughputInMibps']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeInBytes: (() { final guardedValue = map['sizeInBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      throughputMode: (() { final guardedValue = map['throughputMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
