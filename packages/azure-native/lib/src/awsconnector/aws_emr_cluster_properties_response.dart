// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_response.dart';
import 'configuration_response.dart';
import 'ec2_instance_attributes_response.dart';
import 'emr_cluster_status_response.dart';
import 'instance_collection_type_enum_value_response.dart';
import 'kerberos_attributes_response.dart';
import 'placement_group_config_response.dart';
import 'repo_upgrade_on_boot_enum_value_response.dart';
import 'scale_down_behavior_enum_value_response.dart';
import 'tag_response.dart';

/// Definition of awsEmrCluster
class AwsEmrClusterPropertiesResponse {
  /// <p>The applications installed on this cluster.</p>
  final List<ApplicationResponse>? applications;
  /// <p>An IAM role for automatic scaling policies. The default role is <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate Amazon EC2 instances in an instance group.</p>
  final String? autoScalingRole;
  /// <p>Specifies whether the cluster should terminate after completing all steps.</p>
  final bool? autoTerminate;
  /// <p>The Amazon Resource Name of the cluster.</p>
  final String? clusterArn;
  /// <p>Applies only to Amazon EMR releases 4.x and later. The list of configurations that are supplied to the Amazon EMR cluster.</p>
  final List<ConfigurationResponse>? configurations;
  /// <p>Available only in Amazon EMR releases 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.</p>
  final String? customAmiId;
  /// <p>The IOPS, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.</p>
  final int? ebsRootVolumeIops;
  /// <p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 4.x and later.</p>
  final int? ebsRootVolumeSize;
  /// <p>The throughput, in MiB/s, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.</p>
  final int? ebsRootVolumeThroughput;
  /// <p>Provides information about the Amazon EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>
  final Ec2InstanceAttributesResponse? ec2InstanceAttributes;
  /// <p>The unique identifier for the cluster.</p>
  final String? id;
  /// <note> <p>The instance fleet configuration is available only in Amazon EMR releases 4.8.0 and later, excluding 5.0.x versions.</p> </note> <p>The instance group configuration of the cluster. A value of <code>INSTANCE_GROUP</code> indicates a uniform instance group configuration. A value of <code>INSTANCE_FLEET</code> indicates an instance fleets configuration.</p>
  final InstanceCollectionTypeEnumValueResponse? instanceCollectionType;
  /// <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href='https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html'>Use Kerberos Authentication</a> in the <i>Amazon EMR Management Guide</i>.</p>
  final KerberosAttributesResponse? kerberosAttributes;
  /// <p> The KMS key used for encrypting log files. This attribute is only available with Amazon EMR 5.30.0 and later, excluding Amazon EMR 6.0.0. </p>
  final String? logEncryptionKmsKeyId;
  /// <p>The path to the Amazon S3 location where logs for this cluster are stored.</p>
  final String? logUri;
  /// <p>The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.</p>
  final String? masterPublicDnsName;
  /// <p>The name of the cluster. This parameter can't contain the characters &lt;, &gt;, $, |, or ` (backtick).</p>
  final String? name;
  /// <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an Amazon EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.</p>
  final int? normalizedInstanceHours;
  /// <p>The Amazon Linux release specified in a cluster launch RunJobFlow request. If no Amazon Linux release was specified, the default Amazon Linux release is shown in the response.</p>
  final String? osReleaseLabel;
  /// <p> The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. </p>
  final String? outpostArn;
  /// <p>Placement group configured for an Amazon EMR cluster.</p>
  final List<PlacementGroupConfigResponse>? placementGroups;
  /// <p>The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version such as <code>emr-5.14.0</code>. For more information about Amazon EMR release versions and included application versions and features, see <a href='https://docs.aws.amazon.com/emr/latest/ReleaseGuide/'>https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use <code>AmiVersion</code>.</p>
  final String? releaseLabel;
  /// <p>Applies only when <code>CustomAmiID</code> is used. Specifies the type of updates that the Amazon Linux AMI package repositories apply when an instance boots using the AMI.</p>
  final RepoUpgradeOnBootEnumValueResponse? repoUpgradeOnBoot;
  /// <p>The AMI version requested for this cluster.</p>
  final String? requestedAmiVersion;
  /// <p>The AMI version running on this cluster.</p>
  final String? runningAmiVersion;
  /// <p>The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes to a deny list and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> is available only in Amazon EMR releases 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
  final ScaleDownBehaviorEnumValueResponse? scaleDownBehavior;
  /// <p>The name of the security configuration applied to the cluster.</p>
  final String? securityConfiguration;
  /// <p>The IAM role that Amazon EMR assumes in order to access Amazon Web Services resources on your behalf.</p>
  final String? serviceRole;
  /// <p>The current status details about the cluster.</p>
  final EmrClusterStatusResponse? status;
  /// <p>Specifies the number of steps that can be executed concurrently.</p>
  final int? stepConcurrencyLevel;
  /// <p>A list of tags associated with a cluster.</p>
  final List<TagResponse>? tags;
  /// <p>Indicates whether Amazon EMR will lock the cluster to prevent the Amazon EC2 instances from being terminated by an API call or user intervention, or in the event of a cluster error.</p>
  final bool? terminationProtected;
  /// <p>Indicates whether Amazon EMR should gracefully replace Amazon EC2 core instances that have degraded within the cluster.</p>
  final bool? unhealthyNodeReplacement;
  /// <p>Indicates whether the cluster is visible to IAM principals in the Amazon Web Services account associated with the cluster. When <code>true</code>, IAM principals in the Amazon Web Services account can perform Amazon EMR cluster actions on the cluster that their IAM policies allow. When <code>false</code>, only the IAM principal that created the cluster and the Amazon Web Services account root user can perform Amazon EMR actions, regardless of IAM permissions policies attached to other IAM principals.</p> <p>The default value is <code>true</code> if a value is not provided when creating a cluster using the Amazon EMR API <a>RunJobFlow</a> command, the CLI <a href='https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html'>create-cluster</a> command, or the Amazon Web Services Management Console.</p>
  final bool? visibleToAllUsers;

  /// Creates a new [AwsEmrClusterPropertiesResponse].
  /// [applications] <p>The applications installed on this cluster.</p>
  /// [autoScalingRole] <p>An IAM role for automatic scaling policies. The default role is <code>EMR_AutoScaling_DefaultRole</code>. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate Amazon EC2 instances in an instance group.</p>
  /// [autoTerminate] <p>Specifies whether the cluster should terminate after completing all steps.</p>
  /// [clusterArn] <p>The Amazon Resource Name of the cluster.</p>
  /// [configurations] <p>Applies only to Amazon EMR releases 4.x and later. The list of configurations that are supplied to the Amazon EMR cluster.</p>
  /// [customAmiId] <p>Available only in Amazon EMR releases 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.</p>
  /// [ebsRootVolumeIops] <p>The IOPS, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.</p>
  /// [ebsRootVolumeSize] <p>The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 4.x and later.</p>
  /// [ebsRootVolumeThroughput] <p>The throughput, in MiB/s, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.</p>
  /// [ec2InstanceAttributes] <p>Provides information about the Amazon EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>
  /// [id] <p>The unique identifier for the cluster.</p>
  /// [instanceCollectionType] <note> <p>The instance fleet configuration is available only in Amazon EMR releases 4.8.0 and later, excluding 5.0.x versions.</p> </note> <p>The instance group configuration of the cluster. A value of <code>INSTANCE_GROUP</code> indicates a uniform instance group configuration. A value of <code>INSTANCE_FLEET</code> indicates an instance fleets configuration.</p>
  /// [kerberosAttributes] <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href='https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html'>Use Kerberos Authentication</a> in the <i>Amazon EMR Management Guide</i>.</p>
  /// [logEncryptionKmsKeyId] <p> The KMS key used for encrypting log files. This attribute is only available with Amazon EMR 5.30.0 and later, excluding Amazon EMR 6.0.0. </p>
  /// [logUri] <p>The path to the Amazon S3 location where logs for this cluster are stored.</p>
  /// [masterPublicDnsName] <p>The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.</p>
  /// [name] <p>The name of the cluster. This parameter can't contain the characters &lt;, &gt;, $, |, or ` (backtick).</p>
  /// [normalizedInstanceHours] <p>An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an Amazon EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.</p>
  /// [osReleaseLabel] <p>The Amazon Linux release specified in a cluster launch RunJobFlow request. If no Amazon Linux release was specified, the default Amazon Linux release is shown in the response.</p>
  /// [outpostArn] <p> The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. </p>
  /// [placementGroups] <p>Placement group configured for an Amazon EMR cluster.</p>
  /// [releaseLabel] <p>The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form <code>emr-x.x.x</code>, where x.x.x is an Amazon EMR release version such as <code>emr-5.14.0</code>. For more information about Amazon EMR release versions and included application versions and features, see <a href='https://docs.aws.amazon.com/emr/latest/ReleaseGuide/'>https://docs.aws.amazon.com/emr/latest/ReleaseGuide/</a>. The release label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use <code>AmiVersion</code>.</p>
  /// [repoUpgradeOnBoot] <p>Applies only when <code>CustomAmiID</code> is used. Specifies the type of updates that the Amazon Linux AMI package repositories apply when an instance boots using the AMI.</p>
  /// [requestedAmiVersion] <p>The AMI version requested for this cluster.</p>
  /// [runningAmiVersion] <p>The AMI version running on this cluster.</p>
  /// [scaleDownBehavior] <p>The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. <code>TERMINATE_AT_INSTANCE_HOUR</code> indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. <code>TERMINATE_AT_TASK_COMPLETION</code> indicates that Amazon EMR adds nodes to a deny list and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. <code>TERMINATE_AT_TASK_COMPLETION</code> is available only in Amazon EMR releases 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.</p>
  /// [securityConfiguration] <p>The name of the security configuration applied to the cluster.</p>
  /// [serviceRole] <p>The IAM role that Amazon EMR assumes in order to access Amazon Web Services resources on your behalf.</p>
  /// [status] <p>The current status details about the cluster.</p>
  /// [stepConcurrencyLevel] <p>Specifies the number of steps that can be executed concurrently.</p>
  /// [tags] <p>A list of tags associated with a cluster.</p>
  /// [terminationProtected] <p>Indicates whether Amazon EMR will lock the cluster to prevent the Amazon EC2 instances from being terminated by an API call or user intervention, or in the event of a cluster error.</p>
  /// [unhealthyNodeReplacement] <p>Indicates whether Amazon EMR should gracefully replace Amazon EC2 core instances that have degraded within the cluster.</p>
  /// [visibleToAllUsers] <p>Indicates whether the cluster is visible to IAM principals in the Amazon Web Services account associated with the cluster. When <code>true</code>, IAM principals in the Amazon Web Services account can perform Amazon EMR cluster actions on the cluster that their IAM policies allow. When <code>false</code>, only the IAM principal that created the cluster and the Amazon Web Services account root user can perform Amazon EMR actions, regardless of IAM permissions policies attached to other IAM principals.</p> <p>The default value is <code>true</code> if a value is not provided when creating a cluster using the Amazon EMR API <a>RunJobFlow</a> command, the CLI <a href='https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html'>create-cluster</a> command, or the Amazon Web Services Management Console.</p>
  AwsEmrClusterPropertiesResponse({
    this.applications,
    this.autoScalingRole,
    this.autoTerminate,
    this.clusterArn,
    this.configurations,
    this.customAmiId,
    this.ebsRootVolumeIops,
    this.ebsRootVolumeSize,
    this.ebsRootVolumeThroughput,
    this.ec2InstanceAttributes,
    this.id,
    this.instanceCollectionType,
    this.kerberosAttributes,
    this.logEncryptionKmsKeyId,
    this.logUri,
    this.masterPublicDnsName,
    this.name,
    this.normalizedInstanceHours,
    this.osReleaseLabel,
    this.outpostArn,
    this.placementGroups,
    this.releaseLabel,
    this.repoUpgradeOnBoot,
    this.requestedAmiVersion,
    this.runningAmiVersion,
    this.scaleDownBehavior,
    this.securityConfiguration,
    this.serviceRole,
    this.status,
    this.stepConcurrencyLevel,
    this.tags,
    this.terminationProtected,
    this.unhealthyNodeReplacement,
    this.visibleToAllUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?applications == null ? null : pulumi.Input.encodeList<ApplicationResponse, Map<String, dynamic>>(applications!, (value) => value.toMap()),
      'autoScalingRole': ?autoScalingRole,
      'autoTerminate': ?autoTerminate,
      'clusterArn': ?clusterArn,
      'configurations': ?configurations == null ? null : pulumi.Input.encodeList<ConfigurationResponse, Map<String, dynamic>>(configurations!, (value) => value.toMap()),
      'customAmiId': ?customAmiId,
      'ebsRootVolumeIops': ?ebsRootVolumeIops,
      'ebsRootVolumeSize': ?ebsRootVolumeSize,
      'ebsRootVolumeThroughput': ?ebsRootVolumeThroughput,
      'ec2InstanceAttributes': ?ec2InstanceAttributes == null ? null : ec2InstanceAttributes!.toMap(),
      'id': ?id,
      'instanceCollectionType': ?instanceCollectionType == null ? null : instanceCollectionType!.toMap(),
      'kerberosAttributes': ?kerberosAttributes == null ? null : kerberosAttributes!.toMap(),
      'logEncryptionKmsKeyId': ?logEncryptionKmsKeyId,
      'logUri': ?logUri,
      'masterPublicDnsName': ?masterPublicDnsName,
      'name': ?name,
      'normalizedInstanceHours': ?normalizedInstanceHours,
      'osReleaseLabel': ?osReleaseLabel,
      'outpostArn': ?outpostArn,
      'placementGroups': ?placementGroups == null ? null : pulumi.Input.encodeList<PlacementGroupConfigResponse, Map<String, dynamic>>(placementGroups!, (value) => value.toMap()),
      'releaseLabel': ?releaseLabel,
      'repoUpgradeOnBoot': ?repoUpgradeOnBoot == null ? null : repoUpgradeOnBoot!.toMap(),
      'requestedAmiVersion': ?requestedAmiVersion,
      'runningAmiVersion': ?runningAmiVersion,
      'scaleDownBehavior': ?scaleDownBehavior == null ? null : scaleDownBehavior!.toMap(),
      'securityConfiguration': ?securityConfiguration,
      'serviceRole': ?serviceRole,
      'status': ?status == null ? null : status!.toMap(),
      'stepConcurrencyLevel': ?stepConcurrencyLevel,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'terminationProtected': ?terminationProtected,
      'unhealthyNodeReplacement': ?unhealthyNodeReplacement,
      'visibleToAllUsers': ?visibleToAllUsers,
    };
  }

  factory AwsEmrClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEmrClusterPropertiesResponse(
      applications: map['applications'] == null ? null : pulumi.Input.decodeList<ApplicationResponse>(map['applications'], (value) => ApplicationResponse.fromMap((value as Map).cast<String, dynamic>())),
      autoScalingRole: map['autoScalingRole'] == null ? null : map['autoScalingRole'] as String,
      autoTerminate: map['autoTerminate'] == null ? null : map['autoTerminate'] as bool,
      clusterArn: map['clusterArn'] == null ? null : map['clusterArn'] as String,
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<ConfigurationResponse>(map['configurations'], (value) => ConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      customAmiId: map['customAmiId'] == null ? null : map['customAmiId'] as String,
      ebsRootVolumeIops: map['ebsRootVolumeIops'] == null ? null : map['ebsRootVolumeIops'] as int,
      ebsRootVolumeSize: map['ebsRootVolumeSize'] == null ? null : map['ebsRootVolumeSize'] as int,
      ebsRootVolumeThroughput: map['ebsRootVolumeThroughput'] == null ? null : map['ebsRootVolumeThroughput'] as int,
      ec2InstanceAttributes: map['ec2InstanceAttributes'] == null ? null : Ec2InstanceAttributesResponse.fromMap((map['ec2InstanceAttributes'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      instanceCollectionType: map['instanceCollectionType'] == null ? null : InstanceCollectionTypeEnumValueResponse.fromMap((map['instanceCollectionType'] as Map).cast<String, dynamic>()),
      kerberosAttributes: map['kerberosAttributes'] == null ? null : KerberosAttributesResponse.fromMap((map['kerberosAttributes'] as Map).cast<String, dynamic>()),
      logEncryptionKmsKeyId: map['logEncryptionKmsKeyId'] == null ? null : map['logEncryptionKmsKeyId'] as String,
      logUri: map['logUri'] == null ? null : map['logUri'] as String,
      masterPublicDnsName: map['masterPublicDnsName'] == null ? null : map['masterPublicDnsName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      normalizedInstanceHours: map['normalizedInstanceHours'] == null ? null : map['normalizedInstanceHours'] as int,
      osReleaseLabel: map['osReleaseLabel'] == null ? null : map['osReleaseLabel'] as String,
      outpostArn: map['outpostArn'] == null ? null : map['outpostArn'] as String,
      placementGroups: map['placementGroups'] == null ? null : pulumi.Input.decodeList<PlacementGroupConfigResponse>(map['placementGroups'], (value) => PlacementGroupConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      releaseLabel: map['releaseLabel'] == null ? null : map['releaseLabel'] as String,
      repoUpgradeOnBoot: map['repoUpgradeOnBoot'] == null ? null : RepoUpgradeOnBootEnumValueResponse.fromMap((map['repoUpgradeOnBoot'] as Map).cast<String, dynamic>()),
      requestedAmiVersion: map['requestedAmiVersion'] == null ? null : map['requestedAmiVersion'] as String,
      runningAmiVersion: map['runningAmiVersion'] == null ? null : map['runningAmiVersion'] as String,
      scaleDownBehavior: map['scaleDownBehavior'] == null ? null : ScaleDownBehaviorEnumValueResponse.fromMap((map['scaleDownBehavior'] as Map).cast<String, dynamic>()),
      securityConfiguration: map['securityConfiguration'] == null ? null : map['securityConfiguration'] as String,
      serviceRole: map['serviceRole'] == null ? null : map['serviceRole'] as String,
      status: map['status'] == null ? null : EmrClusterStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      stepConcurrencyLevel: map['stepConcurrencyLevel'] == null ? null : map['stepConcurrencyLevel'] as int,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      terminationProtected: map['terminationProtected'] == null ? null : map['terminationProtected'] as bool,
      unhealthyNodeReplacement: map['unhealthyNodeReplacement'] == null ? null : map['unhealthyNodeReplacement'] as bool,
      visibleToAllUsers: map['visibleToAllUsers'] == null ? null : map['visibleToAllUsers'] as bool,
    );
  }
}

