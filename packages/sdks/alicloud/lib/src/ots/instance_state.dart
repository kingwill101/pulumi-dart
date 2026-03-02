// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
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

  /// Creates a new [InstanceState].
  /// [accessedBy] The network limitation of accessing instance. Valid values:
  /// [description] The description of the instance. Currently, it does not support modifying.
  /// [instanceType] The type of instance. Valid values are "Capacity" and "HighPerformance". Default to "HighPerformance".
  /// [name] The name of the instance.
  /// [networkSourceAcls] The set of request sources that are allowed access. Valid optional values:
  /// [networkTypeAcls] The set of network types that are allowed access. Valid optional values:
  /// [resourceGroupId] The resource group the instance belongs to.
  /// [tags] A mapping of tags to assign to the instance.
  InstanceState({
    this.accessedBy,
    this.description,
    this.instanceType,
    this.name,
    this.networkSourceAcls,
    this.networkTypeAcls,
    this.resourceGroupId,
    this.tags,
  });

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

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accessedBy: map['accessedBy'] == null ? null : (map['accessedBy'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkSourceAcls: map['networkSourceAcls'] == null ? null : ((map['networkSourceAcls'] as List).cast<String>()).input(),
      networkTypeAcls: map['networkTypeAcls'] == null ? null : ((map['networkTypeAcls'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

