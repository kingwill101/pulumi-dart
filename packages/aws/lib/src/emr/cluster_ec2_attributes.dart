// ignore_for_file: unused_element, unnecessary_cast

class ClusterEc2Attributes {
  /// String containing a comma separated list of additional Amazon EC2 security group IDs for the master node.
  final String? additionalMasterSecurityGroups;

  /// String containing a comma separated list of additional Amazon EC2 security group IDs for the slave nodes as a comma separated string.
  final String? additionalSlaveSecurityGroups;

  /// Identifier of the Amazon EC2 EMR-Managed security group for the master node.
  final String? emrManagedMasterSecurityGroup;

  /// Identifier of the Amazon EC2 EMR-Managed security group for the slave nodes.
  final String? emrManagedSlaveSecurityGroup;

  /// Instance Profile for EC2 instances of the cluster assume this role.
  final String instanceProfile;

  /// Amazon EC2 key pair that can be used to ssh to the master node as the user called `hadoop`.
  final String? keyName;

  /// Identifier of the Amazon EC2 service-access security group - required when the cluster runs on a private subnet.
  final String? serviceAccessSecurityGroup;

  /// VPC subnet id where you want the job flow to launch. Cannot specify the `cc1.4xlarge` instance type for nodes of a job flow launched in an Amazon VPC.
  final String? subnetId;

  /// List of VPC subnet id-s where you want the job flow to launch.  Amazon EMR identifies the best Availability Zone to launch instances according to your fleet specifications.
  ///
  /// > **NOTE on EMR-Managed security groups:** These security groups will have any missing inbound or outbound access rules added and maintained by AWS, to ensure proper communication between instances in a cluster. The EMR service will maintain these rules for groups provided in `emr_managed_master_security_group` and `emr_managed_slave_security_group`; attempts to remove the required rules may succeed, only for the EMR service to re-add them in a matter of minutes. This may cause this provider to fail to destroy an environment that contains an EMR cluster, because the EMR service does not revoke rules added on deletion, leaving a cyclic dependency between the security groups that prevents their deletion. To avoid this, use the `revoke_rules_on_delete` optional attribute for any Security Group used in `emr_managed_master_security_group` and `emr_managed_slave_security_group`. See [Amazon EMR-Managed Security Groups](http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-man-sec-groups.html) for more information about the EMR-managed security group rules.
  final List<String>? subnetIds;

  /// Creates a new [ClusterEc2Attributes].
  /// [additionalMasterSecurityGroups] String containing a comma separated list of additional Amazon EC2 security group IDs for the master node.
  /// [additionalSlaveSecurityGroups] String containing a comma separated list of additional Amazon EC2 security group IDs for the slave nodes as a comma separated string.
  /// [emrManagedMasterSecurityGroup] Identifier of the Amazon EC2 EMR-Managed security group for the master node.
  /// [emrManagedSlaveSecurityGroup] Identifier of the Amazon EC2 EMR-Managed security group for the slave nodes.
  /// [instanceProfile] Instance Profile for EC2 instances of the cluster assume this role.
  /// [keyName] Amazon EC2 key pair that can be used to ssh to the master node as the user called `hadoop`.
  /// [serviceAccessSecurityGroup] Identifier of the Amazon EC2 service-access security group - required when the cluster runs on a private subnet.
  /// [subnetId] VPC subnet id where you want the job flow to launch. Cannot specify the `cc1.4xlarge` instance type for nodes of a job flow launched in an Amazon VPC.
  /// [subnetIds] List of VPC subnet id-s where you want the job flow to launch.  Amazon EMR identifies the best Availability Zone to launch instances according to your fleet specifications.
  ClusterEc2Attributes({
    this.additionalMasterSecurityGroups,
    this.additionalSlaveSecurityGroups,
    this.emrManagedMasterSecurityGroup,
    this.emrManagedSlaveSecurityGroup,
    required this.instanceProfile,
    this.keyName,
    this.serviceAccessSecurityGroup,
    this.subnetId,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalMasterSecurityGroups': ?additionalMasterSecurityGroups,
      'additionalSlaveSecurityGroups': ?additionalSlaveSecurityGroups,
      'emrManagedMasterSecurityGroup': ?emrManagedMasterSecurityGroup,
      'emrManagedSlaveSecurityGroup': ?emrManagedSlaveSecurityGroup,
      'instanceProfile': instanceProfile,
      'keyName': ?keyName,
      'serviceAccessSecurityGroup': ?serviceAccessSecurityGroup,
      'subnetId': ?subnetId,
      'subnetIds': ?subnetIds,
    };
  }

  factory ClusterEc2Attributes.fromMap(Map<String, dynamic> map) {
    return ClusterEc2Attributes(
      additionalMasterSecurityGroups:
          map['additionalMasterSecurityGroups'] == null
          ? null
          : map['additionalMasterSecurityGroups'] as String,
      additionalSlaveSecurityGroups:
          map['additionalSlaveSecurityGroups'] == null
          ? null
          : map['additionalSlaveSecurityGroups'] as String,
      emrManagedMasterSecurityGroup:
          map['emrManagedMasterSecurityGroup'] == null
          ? null
          : map['emrManagedMasterSecurityGroup'] as String,
      emrManagedSlaveSecurityGroup: map['emrManagedSlaveSecurityGroup'] == null
          ? null
          : map['emrManagedSlaveSecurityGroup'] as String,
      instanceProfile: map['instanceProfile'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      serviceAccessSecurityGroup: map['serviceAccessSecurityGroup'] == null
          ? null
          : map['serviceAccessSecurityGroup'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
    );
  }
}
