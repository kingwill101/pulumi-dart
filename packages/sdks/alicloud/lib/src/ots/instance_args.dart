// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_ots_instance_instance_args_doc}
class InstanceArgs {
  /// The network limitation of accessing instance. Valid values:
  /// * `Any` - Allow all network to access the instance.
  /// * `Vpc` - Only can the attached VPC allow to access the instance.
  /// * `ConsoleOrVpc` - Allow web console or the attached VPC to access the instance.
  ///
  /// Default to "Any".
  final pulumi.Input<String>? accessedBy;
  /// The description of the instance. Currently, it does not support modifying.
  final pulumi.Input<String>? description;
  /// The type of instance. Valid values are "Capacity" and "HighPerformance". Default to "HighPerformance".
  final pulumi.Input<String>? instanceType;
  /// The name of the instance.
  final pulumi.Input<String>? name;
  /// The set of request sources that are allowed access. Valid optional values:
  /// * `TRUST_PROXY` - Trusted proxy, usually the Alibaba Cloud console.
  ///
  /// Default to ["TRUST_PROXY"].
  final pulumi.Input<List<String>>? networkSourceAcls;
  /// The set of network types that are allowed access. Valid optional values:
  /// * `CLASSIC` - Classic network.
  /// * `VPC` - VPC network.
  /// * `INTERNET` - Public internet.
  ///
  /// Default to ["VPC", "CLASSIC", "INTERNET"].
  final pulumi.Input<List<String>>? networkTypeAcls;
  /// The resource group the instance belongs to.
  /// Default to Alibaba Cloud default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [accessedBy] The network limitation of accessing instance. Valid values:
  /// [description] The description of the instance. Currently, it does not support modifying.
  /// [instanceType] The type of instance. Valid values are "Capacity" and "HighPerformance". Default to "HighPerformance".
  /// [name] The name of the instance.
  /// [networkSourceAcls] The set of request sources that are allowed access. Valid optional values:
  /// [networkTypeAcls] The set of network types that are allowed access. Valid optional values:
  /// [resourceGroupId] The resource group the instance belongs to.
  /// [tags] A mapping of tags to assign to the instance.
  InstanceArgs({
    pulumi.Output<String>? accessedBy,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? networkSourceAcls,
    pulumi.Output<List<String>>? networkTypeAcls,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessedBy = pulumi.Input.asOptionalInput<String>(accessedBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSourceAcls = pulumi.Input.asOptionalInput<List<String>>(networkSourceAcls),
      networkTypeAcls = pulumi.Input.asOptionalInput<List<String>>(networkTypeAcls),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessedBy': ?accessedBy,
      'description': ?description,
      'instanceType': ?instanceType,
      'name': ?name,
      'networkSourceAcls': ?networkSourceAcls,
      'networkTypeAcls': ?networkTypeAcls,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accessedBy: map['accessedBy'] == null ? null : pulumi.Output.create<String>(map['accessedBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkSourceAcls: map['networkSourceAcls'] == null ? null : pulumi.Output.create<List<String>>((map['networkSourceAcls'] as List).cast<String>()),
      networkTypeAcls: map['networkTypeAcls'] == null ? null : pulumi.Output.create<List<String>>((map['networkTypeAcls'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

