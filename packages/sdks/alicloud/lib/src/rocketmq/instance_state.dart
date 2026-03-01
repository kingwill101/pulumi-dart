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
    pulumi.Output<String>? instanceName,
    pulumi.Output<int>? instanceStatus,
    pulumi.Output<int>? instanceType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? releaseTime,
    pulumi.Output<String>? remark,
    pulumi.Output<int>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceStatus = pulumi.Input.asOptionalInput<int>(instanceStatus),
      instanceType = pulumi.Input.asOptionalInput<int>(instanceType),
      name = pulumi.Input.asOptionalInput<String>(name),
      releaseTime = pulumi.Input.asOptionalInput<String>(releaseTime),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      status = pulumi.Input.asOptionalInput<int>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceStatus: map['instanceStatus'] == null ? null : pulumi.Output.create<int>(map['instanceStatus'] as int),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<int>(map['instanceType'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      releaseTime: map['releaseTime'] == null ? null : pulumi.Output.create<String>(map['releaseTime'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

