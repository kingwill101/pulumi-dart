// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag.dart';

/// Definition of awsIamVirtualMFADevice
class AwsIamVirtualMFADeviceProperties {
  /// Property path
  final String? path;
  /// Property serialNumber
  final String? serialNumber;
  /// Property tags
  final List<Tag>? tags;
  /// Property users
  final List<String>? users;
  /// Property virtualMfaDeviceName
  final String? virtualMfaDeviceName;

  /// Creates a new [AwsIamVirtualMFADeviceProperties].
  /// [path] Property path
  /// [serialNumber] Property serialNumber
  /// [tags] Property tags
  /// [users] Property users
  /// [virtualMfaDeviceName] Property virtualMfaDeviceName
  AwsIamVirtualMFADeviceProperties({
    this.path,
    this.serialNumber,
    this.tags,
    this.users,
    this.virtualMfaDeviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'serialNumber': ?serialNumber,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'users': ?users,
      'virtualMfaDeviceName': ?virtualMfaDeviceName,
    };
  }

  factory AwsIamVirtualMFADeviceProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamVirtualMFADeviceProperties(
      path: map['path'] == null ? null : map['path'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      users: map['users'] == null ? null : (map['users'] as List).cast<String>(),
      virtualMfaDeviceName: map['virtualMfaDeviceName'] == null ? null : map['virtualMfaDeviceName'] as String,
    );
  }
}

