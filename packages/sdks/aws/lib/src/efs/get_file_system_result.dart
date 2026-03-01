// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_file_system_lifecycle_policy.dart';
import 'get_file_system_protection.dart';

/// Result data returned by getFileSystem.
class GetFileSystemResult {
  /// Amazon Resource Name of the file system.
  final String arn;
  /// The identifier of the Availability Zone in which the file system's One Zone storage classes exist.
  final String availabilityZoneId;
  /// The Availability Zone name in which the file system's One Zone storage classes exist.
  final String availabilityZoneName;
  final String creationToken;
  /// DNS name for the filesystem per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final String dnsName;
  /// Whether EFS is encrypted.
  final bool encrypted;
  final String fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN for the KMS encryption key.
  final String kmsKeyId;
  /// File system [lifecycle policy](https://docs.aws.amazon.com/efs/latest/ug/API_LifecyclePolicy.html) object.
  final List<GetFileSystemLifecyclePolicy> lifecyclePolicies;
  /// The value of the file system's `Name` tag.
  final String name;
  /// File system performance mode.
  final String performanceMode;
  final List<GetFileSystemProtection> protections;
  /// The throughput, measured in MiB/s, that you want to provision for the file system.
  final double provisionedThroughputInMibps;
  final String region;
  /// Current byte count used by the file system.
  final int sizeInBytes;
  /// A map of tags to assign to the file system.
  final Map<String, String> tags;
  /// Throughput mode for the file system.
  final String throughputMode;

  /// Creates a new [GetFileSystemResult].
  /// [arn] Amazon Resource Name of the file system.
  /// [availabilityZoneId] The identifier of the Availability Zone in which the file system's One Zone storage classes exist.
  /// [availabilityZoneName] The Availability Zone name in which the file system's One Zone storage classes exist.
  /// [creationToken] Required.
  /// [dnsName] DNS name for the filesystem per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [encrypted] Whether EFS is encrypted.
  /// [fileSystemId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] ARN for the KMS encryption key.
  /// [lifecyclePolicies] File system [lifecycle policy](https://docs.aws.amazon.com/efs/latest/ug/API_LifecyclePolicy.html) object.
  /// [name] The value of the file system's `Name` tag.
  /// [performanceMode] File system performance mode.
  /// [protections] Required.
  /// [provisionedThroughputInMibps] The throughput, measured in MiB/s, that you want to provision for the file system.
  /// [region] Required.
  /// [sizeInBytes] Current byte count used by the file system.
  /// [tags] A map of tags to assign to the file system.
  /// [throughputMode] Throughput mode for the file system.
  GetFileSystemResult({
    required this.arn,
    required this.availabilityZoneId,
    required this.availabilityZoneName,
    required this.creationToken,
    required this.dnsName,
    required this.encrypted,
    required this.fileSystemId,
    required this.id,
    required this.kmsKeyId,
    required this.lifecyclePolicies,
    required this.name,
    required this.performanceMode,
    required this.protections,
    required this.provisionedThroughputInMibps,
    required this.region,
    required this.sizeInBytes,
    required this.tags,
    required this.throughputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZoneId': availabilityZoneId,
      'availabilityZoneName': availabilityZoneName,
      'creationToken': creationToken,
      'dnsName': dnsName,
      'encrypted': encrypted,
      'fileSystemId': fileSystemId,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'lifecyclePolicies': pulumi.Input.encodeList<GetFileSystemLifecyclePolicy, Map<String, dynamic>>(lifecyclePolicies, (value) => value.toMap()),
      'name': name,
      'performanceMode': performanceMode,
      'protections': pulumi.Input.encodeList<GetFileSystemProtection, Map<String, dynamic>>(protections, (value) => value.toMap()),
      'provisionedThroughputInMibps': provisionedThroughputInMibps,
      'region': region,
      'sizeInBytes': sizeInBytes,
      'tags': tags,
      'throughputMode': throughputMode,
    };
  }

  factory GetFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetFileSystemResult(
      arn: map['arn'] as String,
      availabilityZoneId: map['availabilityZoneId'] as String,
      availabilityZoneName: map['availabilityZoneName'] as String,
      creationToken: map['creationToken'] as String,
      dnsName: map['dnsName'] as String,
      encrypted: map['encrypted'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      lifecyclePolicies: pulumi.Input.decodeList<GetFileSystemLifecyclePolicy>(map['lifecyclePolicies'], (value) => GetFileSystemLifecyclePolicy.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      performanceMode: map['performanceMode'] as String,
      protections: pulumi.Input.decodeList<GetFileSystemProtection>(map['protections'], (value) => GetFileSystemProtection.fromMap((value as Map).cast<String, dynamic>())),
      provisionedThroughputInMibps: map['provisionedThroughputInMibps'] as double,
      region: map['region'] as String,
      sizeInBytes: map['sizeInBytes'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      throughputMode: map['throughputMode'] as String,
    );
  }
}

