// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Two instances on a single account in the same region cannot have the same name. The length must be 3 to 64 characters. Chinese characters, English letters digits and hyphen are allowed.
  final pulumi.Input<String>? instanceName;
  /// The status of instance. 1 represents the platinum edition instance is in deployment. 2 represents the postpaid edition instance are overdue. 5 represents the postpaid or platinum edition instance is in service. 7 represents the platinum version instance is in upgrade and the service is available.
  final pulumi.Input<int>? instanceStatus;
  /// The edition of instance. 1 represents the postPaid edition, and 2 represents the platinum edition.
  final pulumi.Input<int>? instanceType;
  /// Replaced by `instance_name` after version 1.97.0.
  final pulumi.Input<String>? name;
  /// Platinum edition instance expiration time.
  final pulumi.Input<String>? releaseTime;
  /// This attribute is a concise description of instance. The length cannot exceed 128.
  final pulumi.Input<String>? remark;
  /// The status of instance. 1 represents the platinum edition instance is in deployment. 2 represents the postpaid edition instance are overdue. 5 represents the postpaid or platinum edition instance is in service. 7 represents the platinum version instance is in upgrade and the service is available.
  final pulumi.Input<int>? status;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceState].
  /// [instanceName] Two instances on a single account in the same region cannot have the same name. The length must be 3 to 64 characters. Chinese characters, English letters digits and hyphen are allowed.
  /// [instanceStatus] The status of instance. 1 represents the platinum edition instance is in deployment. 2 represents the postpaid edition instance are overdue. 5 represents the postpaid or platinum edition instance is in service. 7 represents the platinum version instance is in upgrade and the service is available.
  /// [instanceType] The edition of instance. 1 represents the postPaid edition, and 2 represents the platinum edition.
  /// [name] Replaced by `instance_name` after version 1.97.0.
  /// [releaseTime] Platinum edition instance expiration time.
  /// [remark] This attribute is a concise description of instance. The length cannot exceed 128.
  /// [status] The status of instance. 1 represents the platinum edition instance is in deployment. 2 represents the postpaid edition instance are overdue. 5 represents the postpaid or platinum edition instance is in service. 7 represents the platinum version instance is in upgrade and the service is available.
  /// [tags] A mapping of tags to assign to the resource.
  InstanceState({
    this.instanceName,
    this.instanceStatus,
    this.instanceType,
    this.name,
    this.releaseTime,
    this.remark,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'instanceStatus': ?instanceStatus,
      'instanceType': ?instanceType,
      'name': ?name,
      'releaseTime': ?releaseTime,
      'remark': ?remark,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      instanceStatus: map['instanceStatus'] == null ? null : (map['instanceStatus'] as int).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      releaseTime: map['releaseTime'] == null ? null : (map['releaseTime'] as String).input(),
      remark: map['remark'] == null ? null : (map['remark'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

