// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_response.dart';

/// Definition of awsIamVirtualMFADevice
class AwsIamVirtualMFADevicePropertiesResponse {
  /// Property path
  final pulumi.Input<String?>? path;
  /// Property serialNumber
  final pulumi.Input<String?>? serialNumber;
  /// Property tags
  final pulumi.Input<List<TagResponse>?>? tags;
  /// Property users
  final pulumi.Input<List<String>?>? users;
  /// Property virtualMfaDeviceName
  final pulumi.Input<String?>? virtualMfaDeviceName;

  /// Creates a new [AwsIamVirtualMFADevicePropertiesResponse].
  /// [path] Property path
  /// [serialNumber] Property serialNumber
  /// [tags] Property tags
  /// [users] Property users
  /// [virtualMfaDeviceName] Property virtualMfaDeviceName
  const AwsIamVirtualMFADevicePropertiesResponse({
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
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'users': ?users,
      'virtualMfaDeviceName': ?virtualMfaDeviceName,
    };
  }

  factory AwsIamVirtualMFADevicePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsIamVirtualMFADevicePropertiesResponse(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serialNumber: (() { final guardedValue = map['serialNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualMfaDeviceName: (() { final guardedValue = map['virtualMfaDeviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
