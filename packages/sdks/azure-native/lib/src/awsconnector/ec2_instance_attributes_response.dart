// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ec2InstanceAttributes
class Ec2InstanceAttributesResponse {
  /// &lt;p&gt;A list of additional Amazon EC2 security group IDs for the master node.&lt;/p&gt;
  final pulumi.Input<List<String>>? additionalMasterSecurityGroups;
  /// &lt;p&gt;A list of additional Amazon EC2 security group IDs for the core and task nodes.&lt;/p&gt;
  final pulumi.Input<List<String>>? additionalSlaveSecurityGroups;
  /// &lt;p&gt;The Availability Zone in which the cluster will run. &lt;/p&gt;
  final pulumi.Input<String>? ec2AvailabilityZone;
  /// &lt;p&gt;The name of the Amazon EC2 key pair to use when connecting with SSH into the master node as a user named 'hadoop'.&lt;/p&gt;
  final pulumi.Input<String>? ec2KeyName;
  /// &lt;p&gt;Set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, and your account supports EC2-Classic, the cluster launches in EC2-Classic.&lt;/p&gt;
  final pulumi.Input<String>? ec2SubnetId;
  /// &lt;p&gt;The identifier of the Amazon EC2 security group for the master node.&lt;/p&gt;
  final pulumi.Input<String>? emrManagedMasterSecurityGroup;
  /// &lt;p&gt;The identifier of the Amazon EC2 security group for the core and task nodes.&lt;/p&gt;
  final pulumi.Input<String>? emrManagedSlaveSecurityGroup;
  /// &lt;p&gt;The IAM role that was specified when the cluster was launched. The Amazon EC2 instances of the cluster assume this role.&lt;/p&gt;
  final pulumi.Input<String>? iamInstanceProfile;
  /// &lt;p&gt;Applies to clusters configured with the instance fleets option. Specifies one or more Availability Zones in which to launch Amazon EC2 cluster instances when the EC2-Classic network configuration is supported. Amazon EMR chooses the Availability Zone with the best fit from among the list of &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt;, and then launches all cluster instances within that Availability Zone. If you do not specify this value, Amazon EMR chooses the Availability Zone for you. &lt;code&gt;RequestedEc2SubnetIDs&lt;/code&gt; and &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt; cannot be specified together.&lt;/p&gt;
  final pulumi.Input<List<String>>? requestedEc2AvailabilityZones;
  /// &lt;p&gt;Applies to clusters configured with the instance fleets option. Specifies the unique identifier of one or more Amazon EC2 subnets in which to launch Amazon EC2 cluster instances. Subnets must exist within the same VPC. Amazon EMR chooses the Amazon EC2 subnet with the best fit from among the list of &lt;code&gt;RequestedEc2SubnetIds&lt;/code&gt;, and then launches all cluster instances within that Subnet. If this value is not specified, and the account and Region support EC2-Classic networks, the cluster launches instances in the EC2-Classic network and uses &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt; instead of this setting. If EC2-Classic is not supported, and no Subnet is specified, Amazon EMR chooses the subnet for you. &lt;code&gt;RequestedEc2SubnetIDs&lt;/code&gt; and &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt; cannot be specified together.&lt;/p&gt;
  final pulumi.Input<List<String>>? requestedEc2SubnetIds;
  /// &lt;p&gt;The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.&lt;/p&gt;
  final pulumi.Input<String>? serviceAccessSecurityGroup;

  /// Creates a new [Ec2InstanceAttributesResponse].
  /// [additionalMasterSecurityGroups] &lt;p&gt;A list of additional Amazon EC2 security group IDs for the master node.&lt;/p&gt;
  /// [additionalSlaveSecurityGroups] &lt;p&gt;A list of additional Amazon EC2 security group IDs for the core and task nodes.&lt;/p&gt;
  /// [ec2AvailabilityZone] &lt;p&gt;The Availability Zone in which the cluster will run. &lt;/p&gt;
  /// [ec2KeyName] &lt;p&gt;The name of the Amazon EC2 key pair to use when connecting with SSH into the master node as a user named 'hadoop'.&lt;/p&gt;
  /// [ec2SubnetId] &lt;p&gt;Set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, and your account supports EC2-Classic, the cluster launches in EC2-Classic.&lt;/p&gt;
  /// [emrManagedMasterSecurityGroup] &lt;p&gt;The identifier of the Amazon EC2 security group for the master node.&lt;/p&gt;
  /// [emrManagedSlaveSecurityGroup] &lt;p&gt;The identifier of the Amazon EC2 security group for the core and task nodes.&lt;/p&gt;
  /// [iamInstanceProfile] &lt;p&gt;The IAM role that was specified when the cluster was launched. The Amazon EC2 instances of the cluster assume this role.&lt;/p&gt;
  /// [requestedEc2AvailabilityZones] &lt;p&gt;Applies to clusters configured with the instance fleets option. Specifies one or more Availability Zones in which to launch Amazon EC2 cluster instances when the EC2-Classic network configuration is supported. Amazon EMR chooses the Availability Zone with the best fit from among the list of &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt;, and then launches all cluster instances within that Availability Zone. If you do not specify this value, Amazon EMR chooses the Availability Zone for you. &lt;code&gt;RequestedEc2SubnetIDs&lt;/code&gt; and &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt; cannot be specified together.&lt;/p&gt;
  /// [requestedEc2SubnetIds] &lt;p&gt;Applies to clusters configured with the instance fleets option. Specifies the unique identifier of one or more Amazon EC2 subnets in which to launch Amazon EC2 cluster instances. Subnets must exist within the same VPC. Amazon EMR chooses the Amazon EC2 subnet with the best fit from among the list of &lt;code&gt;RequestedEc2SubnetIds&lt;/code&gt;, and then launches all cluster instances within that Subnet. If this value is not specified, and the account and Region support EC2-Classic networks, the cluster launches instances in the EC2-Classic network and uses &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt; instead of this setting. If EC2-Classic is not supported, and no Subnet is specified, Amazon EMR chooses the subnet for you. &lt;code&gt;RequestedEc2SubnetIDs&lt;/code&gt; and &lt;code&gt;RequestedEc2AvailabilityZones&lt;/code&gt; cannot be specified together.&lt;/p&gt;
  /// [serviceAccessSecurityGroup] &lt;p&gt;The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.&lt;/p&gt;
  const Ec2InstanceAttributesResponse({
    this.additionalMasterSecurityGroups,
    this.additionalSlaveSecurityGroups,
    this.ec2AvailabilityZone,
    this.ec2KeyName,
    this.ec2SubnetId,
    this.emrManagedMasterSecurityGroup,
    this.emrManagedSlaveSecurityGroup,
    this.iamInstanceProfile,
    this.requestedEc2AvailabilityZones,
    this.requestedEc2SubnetIds,
    this.serviceAccessSecurityGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalMasterSecurityGroups': ?additionalMasterSecurityGroups,
      'additionalSlaveSecurityGroups': ?additionalSlaveSecurityGroups,
      'ec2AvailabilityZone': ?ec2AvailabilityZone,
      'ec2KeyName': ?ec2KeyName,
      'ec2SubnetId': ?ec2SubnetId,
      'emrManagedMasterSecurityGroup': ?emrManagedMasterSecurityGroup,
      'emrManagedSlaveSecurityGroup': ?emrManagedSlaveSecurityGroup,
      'iamInstanceProfile': ?iamInstanceProfile,
      'requestedEc2AvailabilityZones': ?requestedEc2AvailabilityZones,
      'requestedEc2SubnetIds': ?requestedEc2SubnetIds,
      'serviceAccessSecurityGroup': ?serviceAccessSecurityGroup,
    };
  }

  factory Ec2InstanceAttributesResponse.fromMap(Map<String, dynamic> map) {
    return Ec2InstanceAttributesResponse(
      additionalMasterSecurityGroups: (() { final guardedValue = map['additionalMasterSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      additionalSlaveSecurityGroups: (() { final guardedValue = map['additionalSlaveSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ec2AvailabilityZone: (() { final guardedValue = map['ec2AvailabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ec2KeyName: (() { final guardedValue = map['ec2KeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ec2SubnetId: (() { final guardedValue = map['ec2SubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emrManagedMasterSecurityGroup: (() { final guardedValue = map['emrManagedMasterSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emrManagedSlaveSecurityGroup: (() { final guardedValue = map['emrManagedSlaveSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestedEc2AvailabilityZones: (() { final guardedValue = map['requestedEc2AvailabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requestedEc2SubnetIds: (() { final guardedValue = map['requestedEc2SubnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serviceAccessSecurityGroup: (() { final guardedValue = map['serviceAccessSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

