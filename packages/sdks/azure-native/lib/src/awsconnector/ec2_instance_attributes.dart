// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Ec2InstanceAttributes
class Ec2InstanceAttributes {
  /// <p>A list of additional Amazon EC2 security group IDs for the master node.</p>
  final pulumi.Input<List<String>>? additionalMasterSecurityGroups;
  /// <p>A list of additional Amazon EC2 security group IDs for the core and task nodes.</p>
  final pulumi.Input<List<String>>? additionalSlaveSecurityGroups;
  /// <p>The Availability Zone in which the cluster will run. </p>
  final pulumi.Input<String>? ec2AvailabilityZone;
  /// <p>The name of the Amazon EC2 key pair to use when connecting with SSH into the master node as a user named 'hadoop'.</p>
  final pulumi.Input<String>? ec2KeyName;
  /// <p>Set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, and your account supports EC2-Classic, the cluster launches in EC2-Classic.</p>
  final pulumi.Input<String>? ec2SubnetId;
  /// <p>The identifier of the Amazon EC2 security group for the master node.</p>
  final pulumi.Input<String>? emrManagedMasterSecurityGroup;
  /// <p>The identifier of the Amazon EC2 security group for the core and task nodes.</p>
  final pulumi.Input<String>? emrManagedSlaveSecurityGroup;
  /// <p>The IAM role that was specified when the cluster was launched. The Amazon EC2 instances of the cluster assume this role.</p>
  final pulumi.Input<String>? iamInstanceProfile;
  /// <p>Applies to clusters configured with the instance fleets option. Specifies one or more Availability Zones in which to launch Amazon EC2 cluster instances when the EC2-Classic network configuration is supported. Amazon EMR chooses the Availability Zone with the best fit from among the list of <code>RequestedEc2AvailabilityZones</code>, and then launches all cluster instances within that Availability Zone. If you do not specify this value, Amazon EMR chooses the Availability Zone for you. <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
  final pulumi.Input<List<String>>? requestedEc2AvailabilityZones;
  /// <p>Applies to clusters configured with the instance fleets option. Specifies the unique identifier of one or more Amazon EC2 subnets in which to launch Amazon EC2 cluster instances. Subnets must exist within the same VPC. Amazon EMR chooses the Amazon EC2 subnet with the best fit from among the list of <code>RequestedEc2SubnetIds</code>, and then launches all cluster instances within that Subnet. If this value is not specified, and the account and Region support EC2-Classic networks, the cluster launches instances in the EC2-Classic network and uses <code>RequestedEc2AvailabilityZones</code> instead of this setting. If EC2-Classic is not supported, and no Subnet is specified, Amazon EMR chooses the subnet for you. <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
  final pulumi.Input<List<String>>? requestedEc2SubnetIds;
  /// <p>The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.</p>
  final pulumi.Input<String>? serviceAccessSecurityGroup;

  /// Creates a new [Ec2InstanceAttributes].
  /// [additionalMasterSecurityGroups] <p>A list of additional Amazon EC2 security group IDs for the master node.</p>
  /// [additionalSlaveSecurityGroups] <p>A list of additional Amazon EC2 security group IDs for the core and task nodes.</p>
  /// [ec2AvailabilityZone] <p>The Availability Zone in which the cluster will run. </p>
  /// [ec2KeyName] <p>The name of the Amazon EC2 key pair to use when connecting with SSH into the master node as a user named 'hadoop'.</p>
  /// [ec2SubnetId] <p>Set this parameter to the identifier of the Amazon VPC subnet where you want the cluster to launch. If you do not specify this value, and your account supports EC2-Classic, the cluster launches in EC2-Classic.</p>
  /// [emrManagedMasterSecurityGroup] <p>The identifier of the Amazon EC2 security group for the master node.</p>
  /// [emrManagedSlaveSecurityGroup] <p>The identifier of the Amazon EC2 security group for the core and task nodes.</p>
  /// [iamInstanceProfile] <p>The IAM role that was specified when the cluster was launched. The Amazon EC2 instances of the cluster assume this role.</p>
  /// [requestedEc2AvailabilityZones] <p>Applies to clusters configured with the instance fleets option. Specifies one or more Availability Zones in which to launch Amazon EC2 cluster instances when the EC2-Classic network configuration is supported. Amazon EMR chooses the Availability Zone with the best fit from among the list of <code>RequestedEc2AvailabilityZones</code>, and then launches all cluster instances within that Availability Zone. If you do not specify this value, Amazon EMR chooses the Availability Zone for you. <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
  /// [requestedEc2SubnetIds] <p>Applies to clusters configured with the instance fleets option. Specifies the unique identifier of one or more Amazon EC2 subnets in which to launch Amazon EC2 cluster instances. Subnets must exist within the same VPC. Amazon EMR chooses the Amazon EC2 subnet with the best fit from among the list of <code>RequestedEc2SubnetIds</code>, and then launches all cluster instances within that Subnet. If this value is not specified, and the account and Region support EC2-Classic networks, the cluster launches instances in the EC2-Classic network and uses <code>RequestedEc2AvailabilityZones</code> instead of this setting. If EC2-Classic is not supported, and no Subnet is specified, Amazon EMR chooses the subnet for you. <code>RequestedEc2SubnetIDs</code> and <code>RequestedEc2AvailabilityZones</code> cannot be specified together.</p>
  /// [serviceAccessSecurityGroup] <p>The identifier of the Amazon EC2 security group for the Amazon EMR service to access clusters in VPC private subnets.</p>
  Ec2InstanceAttributes({
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

  factory Ec2InstanceAttributes.fromMap(Map<String, dynamic> map) {
    return Ec2InstanceAttributes(
      additionalMasterSecurityGroups: map['additionalMasterSecurityGroups'] == null ? null : ((map['additionalMasterSecurityGroups'] as List).cast<String>()).input(),
      additionalSlaveSecurityGroups: map['additionalSlaveSecurityGroups'] == null ? null : ((map['additionalSlaveSecurityGroups'] as List).cast<String>()).input(),
      ec2AvailabilityZone: map['ec2AvailabilityZone'] == null ? null : (map['ec2AvailabilityZone'] as String).input(),
      ec2KeyName: map['ec2KeyName'] == null ? null : (map['ec2KeyName'] as String).input(),
      ec2SubnetId: map['ec2SubnetId'] == null ? null : (map['ec2SubnetId'] as String).input(),
      emrManagedMasterSecurityGroup: map['emrManagedMasterSecurityGroup'] == null ? null : (map['emrManagedMasterSecurityGroup'] as String).input(),
      emrManagedSlaveSecurityGroup: map['emrManagedSlaveSecurityGroup'] == null ? null : (map['emrManagedSlaveSecurityGroup'] as String).input(),
      iamInstanceProfile: map['iamInstanceProfile'] == null ? null : (map['iamInstanceProfile'] as String).input(),
      requestedEc2AvailabilityZones: map['requestedEc2AvailabilityZones'] == null ? null : ((map['requestedEc2AvailabilityZones'] as List).cast<String>()).input(),
      requestedEc2SubnetIds: map['requestedEc2SubnetIds'] == null ? null : ((map['requestedEc2SubnetIds'] as List).cast<String>()).input(),
      serviceAccessSecurityGroup: map['serviceAccessSecurityGroup'] == null ? null : (map['serviceAccessSecurityGroup'] as String).input(),
    );
  }
}

