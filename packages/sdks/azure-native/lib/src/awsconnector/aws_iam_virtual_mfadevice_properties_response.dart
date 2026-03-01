// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsIamVirtualMFADevice
class AwsIamVirtualMFADevicePropertiesResponse {
  /// Property path
  final String? path;
  /// Property serialNumber
  final String? serialNumber;
  /// Property tags
  final List<TagResponse>? tags;
  /// Property users
  final List<String>? users;
  /// Property virtualMfaDeviceName
  final String? virtualMfaDeviceName;

  /// Creates a new [AwsIamVirtualMFADevicePropertiesResponse].
  /// [path] Property path
  /// [serialNumber] Property serialNumber
  /// [tags] Property tags
  /// [users] Property users
  /// [virtualMfaDeviceName] Property virtualMfaDeviceName
  AwsIamVirtualMFADevicePropertiesResponse({
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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'users': ?users,
      'virtualMfaDeviceName': ?virtualMfaDeviceName,
    };
  }

  factory AwsIamVirtualMFADevicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsIamVirtualMFADevicePropertiesResponse(
      path: map['path'] == null ? null : map['path'] as String,
      serialNumber: map['serialNumber'] == null ? null : map['serialNumber'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      users: map['users'] == null ? null : (map['users'] as List).cast<String>(),
      virtualMfaDeviceName: map['virtualMfaDeviceName'] == null ? null : map['virtualMfaDeviceName'] as String,
    );
  }
}

