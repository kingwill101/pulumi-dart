// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application.dart';
import 'configuration.dart';
import 'ec2_instance_attributes.dart';
import 'emr_cluster_status.dart';
import 'instance_collection_type_enum_value.dart';
import 'kerberos_attributes.dart';
import 'placement_group_config.dart';
import 'repo_upgrade_on_boot_enum_value.dart';
import 'scale_down_behavior_enum_value.dart';
import 'tag.dart';

/// Definition of awsEmrCluster
class AwsEmrClusterProperties {
  /// &lt;p&gt;The applications installed on this cluster.&lt;/p&gt;
  final pulumi.Input<List<Application>?>? applications;
  /// &lt;p&gt;An IAM role for automatic scaling policies. The default role is &lt;code&gt;EMR_AutoScaling_DefaultRole&lt;/code&gt;. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate Amazon EC2 instances in an instance group.&lt;/p&gt;
  final pulumi.Input<String?>? autoScalingRole;
  /// &lt;p&gt;Specifies whether the cluster should terminate after completing all steps.&lt;/p&gt;
  final pulumi.Input<bool?>? autoTerminate;
  /// &lt;p&gt;The Amazon Resource Name of the cluster.&lt;/p&gt;
  final pulumi.Input<String?>? clusterArn;
  /// &lt;p&gt;Applies only to Amazon EMR releases 4.x and later. The list of configurations that are supplied to the Amazon EMR cluster.&lt;/p&gt;
  final pulumi.Input<List<Configuration>?>? configurations;
  /// &lt;p&gt;Available only in Amazon EMR releases 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.&lt;/p&gt;
  final pulumi.Input<String?>? customAmiId;
  /// &lt;p&gt;The IOPS, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.&lt;/p&gt;
  final pulumi.Input<int?>? ebsRootVolumeIops;
  /// &lt;p&gt;The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 4.x and later.&lt;/p&gt;
  final pulumi.Input<int?>? ebsRootVolumeSize;
  /// &lt;p&gt;The throughput, in MiB/s, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.&lt;/p&gt;
  final pulumi.Input<int?>? ebsRootVolumeThroughput;
  /// &lt;p&gt;Provides information about the Amazon EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.&lt;/p&gt;
  final pulumi.Input<Ec2InstanceAttributes?>? ec2InstanceAttributes;
  /// &lt;p&gt;The unique identifier for the cluster.&lt;/p&gt;
  final pulumi.Input<String?>? id;
  /// &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR releases 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The instance group configuration of the cluster. A value of &lt;code&gt;INSTANCE_GROUP&lt;/code&gt; indicates a uniform instance group configuration. A value of &lt;code&gt;INSTANCE_FLEET&lt;/code&gt; indicates an instance fleets configuration.&lt;/p&gt;
  final pulumi.Input<InstanceCollectionTypeEnumValue?>? instanceCollectionType;
  /// &lt;p&gt;Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see &lt;a href='https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html'&gt;Use Kerberos Authentication&lt;/a&gt; in the &lt;i&gt;Amazon EMR Management Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<KerberosAttributes?>? kerberosAttributes;
  /// &lt;p&gt; The KMS key used for encrypting log files. This attribute is only available with Amazon EMR 5.30.0 and later, excluding Amazon EMR 6.0.0. &lt;/p&gt;
  final pulumi.Input<String?>? logEncryptionKmsKeyId;
  /// &lt;p&gt;The path to the Amazon S3 location where logs for this cluster are stored.&lt;/p&gt;
  final pulumi.Input<String?>? logUri;
  /// &lt;p&gt;The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.&lt;/p&gt;
  final pulumi.Input<String?>? masterPublicDnsName;
  /// &lt;p&gt;The name of the cluster. This parameter can't contain the characters &lt;, &gt;, $, |, or ` (backtick).&lt;/p&gt;
  final pulumi.Input<String?>? name;
  /// &lt;p&gt;An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an Amazon EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.&lt;/p&gt;
  final pulumi.Input<int?>? normalizedInstanceHours;
  /// &lt;p&gt;The Amazon Linux release specified in a cluster launch RunJobFlow request. If no Amazon Linux release was specified, the default Amazon Linux release is shown in the response.&lt;/p&gt;
  final pulumi.Input<String?>? osReleaseLabel;
  /// &lt;p&gt; The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. &lt;/p&gt;
  final pulumi.Input<String?>? outpostArn;
  /// &lt;p&gt;Placement group configured for an Amazon EMR cluster.&lt;/p&gt;
  final pulumi.Input<List<PlacementGroupConfig>?>? placementGroups;
  /// &lt;p&gt;The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form &lt;code&gt;emr-x.x.x&lt;/code&gt;, where x.x.x is an Amazon EMR release version such as &lt;code&gt;emr-5.14.0&lt;/code&gt;. For more information about Amazon EMR release versions and included application versions and features, see &lt;a href='https://docs.aws.amazon.com/emr/latest/ReleaseGuide/'&gt;https://docs.aws.amazon.com/emr/latest/ReleaseGuide/&lt;/a&gt;. The release label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use &lt;code&gt;AmiVersion&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? releaseLabel;
  /// &lt;p&gt;Applies only when &lt;code&gt;CustomAmiID&lt;/code&gt; is used. Specifies the type of updates that the Amazon Linux AMI package repositories apply when an instance boots using the AMI.&lt;/p&gt;
  final pulumi.Input<RepoUpgradeOnBootEnumValue?>? repoUpgradeOnBoot;
  /// &lt;p&gt;The AMI version requested for this cluster.&lt;/p&gt;
  final pulumi.Input<String?>? requestedAmiVersion;
  /// &lt;p&gt;The AMI version running on this cluster.&lt;/p&gt;
  final pulumi.Input<String?>? runningAmiVersion;
  /// &lt;p&gt;The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. &lt;code&gt;TERMINATE_AT_INSTANCE_HOUR&lt;/code&gt; indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; indicates that Amazon EMR adds nodes to a deny list and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; is available only in Amazon EMR releases 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.&lt;/p&gt;
  final pulumi.Input<ScaleDownBehaviorEnumValue?>? scaleDownBehavior;
  /// &lt;p&gt;The name of the security configuration applied to the cluster.&lt;/p&gt;
  final pulumi.Input<String?>? securityConfiguration;
  /// &lt;p&gt;The IAM role that Amazon EMR assumes in order to access Amazon Web Services resources on your behalf.&lt;/p&gt;
  final pulumi.Input<String?>? serviceRole;
  /// &lt;p&gt;The current status details about the cluster.&lt;/p&gt;
  final pulumi.Input<EmrClusterStatus?>? status;
  /// &lt;p&gt;Specifies the number of steps that can be executed concurrently.&lt;/p&gt;
  final pulumi.Input<int?>? stepConcurrencyLevel;
  /// &lt;p&gt;A list of tags associated with a cluster.&lt;/p&gt;
  final pulumi.Input<List<Tag>?>? tags;
  /// &lt;p&gt;Indicates whether Amazon EMR will lock the cluster to prevent the Amazon EC2 instances from being terminated by an API call or user intervention, or in the event of a cluster error.&lt;/p&gt;
  final pulumi.Input<bool?>? terminationProtected;
  /// &lt;p&gt;Indicates whether Amazon EMR should gracefully replace Amazon EC2 core instances that have degraded within the cluster.&lt;/p&gt;
  final pulumi.Input<bool?>? unhealthyNodeReplacement;
  /// &lt;p&gt;Indicates whether the cluster is visible to IAM principals in the Amazon Web Services account associated with the cluster. When &lt;code&gt;true&lt;/code&gt;, IAM principals in the Amazon Web Services account can perform Amazon EMR cluster actions on the cluster that their IAM policies allow. When &lt;code&gt;false&lt;/code&gt;, only the IAM principal that created the cluster and the Amazon Web Services account root user can perform Amazon EMR actions, regardless of IAM permissions policies attached to other IAM principals.&lt;/p&gt; &lt;p&gt;The default value is &lt;code&gt;true&lt;/code&gt; if a value is not provided when creating a cluster using the Amazon EMR API &lt;a&gt;RunJobFlow&lt;/a&gt; command, the CLI &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html'&gt;create-cluster&lt;/a&gt; command, or the Amazon Web Services Management Console.&lt;/p&gt;
  final pulumi.Input<bool?>? visibleToAllUsers;

  /// Creates a new [AwsEmrClusterProperties].
  /// [applications] &lt;p&gt;The applications installed on this cluster.&lt;/p&gt;
  /// [autoScalingRole] &lt;p&gt;An IAM role for automatic scaling policies. The default role is &lt;code&gt;EMR_AutoScaling_DefaultRole&lt;/code&gt;. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate Amazon EC2 instances in an instance group.&lt;/p&gt;
  /// [autoTerminate] &lt;p&gt;Specifies whether the cluster should terminate after completing all steps.&lt;/p&gt;
  /// [clusterArn] &lt;p&gt;The Amazon Resource Name of the cluster.&lt;/p&gt;
  /// [configurations] &lt;p&gt;Applies only to Amazon EMR releases 4.x and later. The list of configurations that are supplied to the Amazon EMR cluster.&lt;/p&gt;
  /// [customAmiId] &lt;p&gt;Available only in Amazon EMR releases 5.7.0 and later. The ID of a custom Amazon EBS-backed Linux AMI if the cluster uses a custom AMI.&lt;/p&gt;
  /// [ebsRootVolumeIops] &lt;p&gt;The IOPS, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.&lt;/p&gt;
  /// [ebsRootVolumeSize] &lt;p&gt;The size, in GiB, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 4.x and later.&lt;/p&gt;
  /// [ebsRootVolumeThroughput] &lt;p&gt;The throughput, in MiB/s, of the Amazon EBS root device volume of the Linux AMI that is used for each Amazon EC2 instance. Available in Amazon EMR releases 6.15.0 and later.&lt;/p&gt;
  /// [ec2InstanceAttributes] &lt;p&gt;Provides information about the Amazon EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.&lt;/p&gt;
  /// [id] &lt;p&gt;The unique identifier for the cluster.&lt;/p&gt;
  /// [instanceCollectionType] &lt;note&gt; &lt;p&gt;The instance fleet configuration is available only in Amazon EMR releases 4.8.0 and later, excluding 5.0.x versions.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;The instance group configuration of the cluster. A value of &lt;code&gt;INSTANCE_GROUP&lt;/code&gt; indicates a uniform instance group configuration. A value of &lt;code&gt;INSTANCE_FLEET&lt;/code&gt; indicates an instance fleets configuration.&lt;/p&gt;
  /// [kerberosAttributes] &lt;p&gt;Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see &lt;a href='https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html'&gt;Use Kerberos Authentication&lt;/a&gt; in the &lt;i&gt;Amazon EMR Management Guide&lt;/i&gt;.&lt;/p&gt;
  /// [logEncryptionKmsKeyId] &lt;p&gt; The KMS key used for encrypting log files. This attribute is only available with Amazon EMR 5.30.0 and later, excluding Amazon EMR 6.0.0. &lt;/p&gt;
  /// [logUri] &lt;p&gt;The path to the Amazon S3 location where logs for this cluster are stored.&lt;/p&gt;
  /// [masterPublicDnsName] &lt;p&gt;The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name.&lt;/p&gt;
  /// [name] &lt;p&gt;The name of the cluster. This parameter can't contain the characters &lt;, &gt;, $, |, or ` (backtick).&lt;/p&gt;
  /// [normalizedInstanceHours] &lt;p&gt;An approximation of the cost of the cluster, represented in m1.small/hours. This value is incremented one time for every hour an m1.small instance runs. Larger instances are weighted more, so an Amazon EC2 instance that is roughly four times more expensive would result in the normalized instance hours being incremented by four. This result is only an approximation and does not reflect the actual billing rate.&lt;/p&gt;
  /// [osReleaseLabel] &lt;p&gt;The Amazon Linux release specified in a cluster launch RunJobFlow request. If no Amazon Linux release was specified, the default Amazon Linux release is shown in the response.&lt;/p&gt;
  /// [outpostArn] &lt;p&gt; The Amazon Resource Name (ARN) of the Outpost where the cluster is launched. &lt;/p&gt;
  /// [placementGroups] &lt;p&gt;Placement group configured for an Amazon EMR cluster.&lt;/p&gt;
  /// [releaseLabel] &lt;p&gt;The Amazon EMR release label, which determines the version of open-source application packages installed on the cluster. Release labels are in the form &lt;code&gt;emr-x.x.x&lt;/code&gt;, where x.x.x is an Amazon EMR release version such as &lt;code&gt;emr-5.14.0&lt;/code&gt;. For more information about Amazon EMR release versions and included application versions and features, see &lt;a href='https://docs.aws.amazon.com/emr/latest/ReleaseGuide/'&gt;https://docs.aws.amazon.com/emr/latest/ReleaseGuide/&lt;/a&gt;. The release label applies only to Amazon EMR releases version 4.0 and later. Earlier versions use &lt;code&gt;AmiVersion&lt;/code&gt;.&lt;/p&gt;
  /// [repoUpgradeOnBoot] &lt;p&gt;Applies only when &lt;code&gt;CustomAmiID&lt;/code&gt; is used. Specifies the type of updates that the Amazon Linux AMI package repositories apply when an instance boots using the AMI.&lt;/p&gt;
  /// [requestedAmiVersion] &lt;p&gt;The AMI version requested for this cluster.&lt;/p&gt;
  /// [runningAmiVersion] &lt;p&gt;The AMI version running on this cluster.&lt;/p&gt;
  /// [scaleDownBehavior] &lt;p&gt;The way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized. &lt;code&gt;TERMINATE_AT_INSTANCE_HOUR&lt;/code&gt; indicates that Amazon EMR terminates nodes at the instance-hour boundary, regardless of when the request to terminate the instance was submitted. This option is only available with Amazon EMR 5.1.0 and later and is the default for clusters created using that version. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; indicates that Amazon EMR adds nodes to a deny list and drains tasks from nodes before terminating the Amazon EC2 instances, regardless of the instance-hour boundary. With either behavior, Amazon EMR removes the least active nodes first and blocks instance termination if it could lead to HDFS corruption. &lt;code&gt;TERMINATE_AT_TASK_COMPLETION&lt;/code&gt; is available only in Amazon EMR releases 4.1.0 and later, and is the default for versions of Amazon EMR earlier than 5.1.0.&lt;/p&gt;
  /// [securityConfiguration] &lt;p&gt;The name of the security configuration applied to the cluster.&lt;/p&gt;
  /// [serviceRole] &lt;p&gt;The IAM role that Amazon EMR assumes in order to access Amazon Web Services resources on your behalf.&lt;/p&gt;
  /// [status] &lt;p&gt;The current status details about the cluster.&lt;/p&gt;
  /// [stepConcurrencyLevel] &lt;p&gt;Specifies the number of steps that can be executed concurrently.&lt;/p&gt;
  /// [tags] &lt;p&gt;A list of tags associated with a cluster.&lt;/p&gt;
  /// [terminationProtected] &lt;p&gt;Indicates whether Amazon EMR will lock the cluster to prevent the Amazon EC2 instances from being terminated by an API call or user intervention, or in the event of a cluster error.&lt;/p&gt;
  /// [unhealthyNodeReplacement] &lt;p&gt;Indicates whether Amazon EMR should gracefully replace Amazon EC2 core instances that have degraded within the cluster.&lt;/p&gt;
  /// [visibleToAllUsers] &lt;p&gt;Indicates whether the cluster is visible to IAM principals in the Amazon Web Services account associated with the cluster. When &lt;code&gt;true&lt;/code&gt;, IAM principals in the Amazon Web Services account can perform Amazon EMR cluster actions on the cluster that their IAM policies allow. When &lt;code&gt;false&lt;/code&gt;, only the IAM principal that created the cluster and the Amazon Web Services account root user can perform Amazon EMR actions, regardless of IAM permissions policies attached to other IAM principals.&lt;/p&gt; &lt;p&gt;The default value is &lt;code&gt;true&lt;/code&gt; if a value is not provided when creating a cluster using the Amazon EMR API &lt;a&gt;RunJobFlow&lt;/a&gt; command, the CLI &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/emr/create-cluster.html'&gt;create-cluster&lt;/a&gt; command, or the Amazon Web Services Management Console.&lt;/p&gt;
  const AwsEmrClusterProperties({
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
      'applications': ?pulumi.Input.mapOptionalInputValue<List<Application>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<Application, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoScalingRole': ?autoScalingRole,
      'autoTerminate': ?autoTerminate,
      'clusterArn': ?clusterArn,
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<Configuration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<Configuration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customAmiId': ?customAmiId,
      'ebsRootVolumeIops': ?ebsRootVolumeIops,
      'ebsRootVolumeSize': ?ebsRootVolumeSize,
      'ebsRootVolumeThroughput': ?ebsRootVolumeThroughput,
      'ec2InstanceAttributes': ?pulumi.Input.mapOptionalInputValue<Ec2InstanceAttributes, Map<String, dynamic>>(ec2InstanceAttributes, (value) => value.toMap()),
      'id': ?id,
      'instanceCollectionType': ?pulumi.Input.mapOptionalInputValue<InstanceCollectionTypeEnumValue, Map<String, dynamic>>(instanceCollectionType, (value) => value.toMap()),
      'kerberosAttributes': ?pulumi.Input.mapOptionalInputValue<KerberosAttributes, Map<String, dynamic>>(kerberosAttributes, (value) => value.toMap()),
      'logEncryptionKmsKeyId': ?logEncryptionKmsKeyId,
      'logUri': ?logUri,
      'masterPublicDnsName': ?masterPublicDnsName,
      'name': ?name,
      'normalizedInstanceHours': ?normalizedInstanceHours,
      'osReleaseLabel': ?osReleaseLabel,
      'outpostArn': ?outpostArn,
      'placementGroups': ?pulumi.Input.mapOptionalInputValue<List<PlacementGroupConfig>, List<Map<String, dynamic>>>(placementGroups, (value) => pulumi.Input.encodeList<PlacementGroupConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'releaseLabel': ?releaseLabel,
      'repoUpgradeOnBoot': ?pulumi.Input.mapOptionalInputValue<RepoUpgradeOnBootEnumValue, Map<String, dynamic>>(repoUpgradeOnBoot, (value) => value.toMap()),
      'requestedAmiVersion': ?requestedAmiVersion,
      'runningAmiVersion': ?runningAmiVersion,
      'scaleDownBehavior': ?pulumi.Input.mapOptionalInputValue<ScaleDownBehaviorEnumValue, Map<String, dynamic>>(scaleDownBehavior, (value) => value.toMap()),
      'securityConfiguration': ?securityConfiguration,
      'serviceRole': ?serviceRole,
      'status': ?pulumi.Input.mapOptionalInputValue<EmrClusterStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'stepConcurrencyLevel': ?stepConcurrencyLevel,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'terminationProtected': ?terminationProtected,
      'unhealthyNodeReplacement': ?unhealthyNodeReplacement,
      'visibleToAllUsers': ?visibleToAllUsers,
    };
  }

  factory AwsEmrClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsEmrClusterProperties(
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Application>(guardedValue, (value) => Application.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoScalingRole: (() { final guardedValue = map['autoScalingRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoTerminate: (() { final guardedValue = map['autoTerminate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurations: (() { final guardedValue = map['configurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Configuration>(guardedValue, (value) => Configuration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customAmiId: (() { final guardedValue = map['customAmiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsRootVolumeIops: (() { final guardedValue = map['ebsRootVolumeIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ebsRootVolumeSize: (() { final guardedValue = map['ebsRootVolumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ebsRootVolumeThroughput: (() { final guardedValue = map['ebsRootVolumeThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ec2InstanceAttributes: (() { final guardedValue = map['ec2InstanceAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Ec2InstanceAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCollectionType: (() { final guardedValue = map['instanceCollectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCollectionTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kerberosAttributes: (() { final guardedValue = map['kerberosAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KerberosAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logEncryptionKmsKeyId: (() { final guardedValue = map['logEncryptionKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logUri: (() { final guardedValue = map['logUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterPublicDnsName: (() { final guardedValue = map['masterPublicDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      normalizedInstanceHours: (() { final guardedValue = map['normalizedInstanceHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      osReleaseLabel: (() { final guardedValue = map['osReleaseLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroups: (() { final guardedValue = map['placementGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlacementGroupConfig>(guardedValue, (value) => PlacementGroupConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      releaseLabel: (() { final guardedValue = map['releaseLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoUpgradeOnBoot: (() { final guardedValue = map['repoUpgradeOnBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepoUpgradeOnBootEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestedAmiVersion: (() { final guardedValue = map['requestedAmiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runningAmiVersion: (() { final guardedValue = map['runningAmiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownBehavior: (() { final guardedValue = map['scaleDownBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleDownBehaviorEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityConfiguration: (() { final guardedValue = map['securityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmrClusterStatus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stepConcurrencyLevel: (() { final guardedValue = map['stepConcurrencyLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      terminationProtected: (() { final guardedValue = map['terminationProtected']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      unhealthyNodeReplacement: (() { final guardedValue = map['unhealthyNodeReplacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      visibleToAllUsers: (() { final guardedValue = map['visibleToAllUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
