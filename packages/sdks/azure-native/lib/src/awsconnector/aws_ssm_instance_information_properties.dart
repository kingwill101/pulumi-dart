// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_aggregated_association_overview.dart';
import 'ping_status_enum_value.dart';
import 'platform_type_enum_value.dart';
import 'resource_type_enum_value.dart';
import 'source_type_enum_value.dart';

/// Definition of awsSsmInstanceInformation
class AwsSsmInstanceInformationProperties {
  /// <p>The activation ID created by Amazon Web Services Systems Manager when the server or virtual machine (VM) was registered.</p>
  final pulumi.Input<String>? activationId;
  /// <p>The version of SSM Agent running on your Linux managed node. </p>
  final pulumi.Input<String>? agentVersion;
  /// <p>Information about the association.</p>
  final pulumi.Input<InstanceAggregatedAssociationOverview>? associationOverview;
  /// <p>The status of the association.</p>
  final pulumi.Input<String>? associationStatus;
  /// <p>The fully qualified host name of the managed node.</p>
  final pulumi.Input<String>? computerName;
  /// <p>The Identity and Access Management (IAM) role assigned to the on-premises Systems Manager managed node. This call doesn't return the IAM role for Amazon Elastic Compute Cloud (Amazon EC2) instances. To retrieve the IAM role for an EC2 instance, use the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'>DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'>describe-instances</a> in the <i>Amazon Web Services CLI Command Reference</i>.</p>
  final pulumi.Input<String>? iamRole;
  /// <p>The managed node ID. </p>
  final pulumi.Input<String>? instanceId;
  /// <p>The IP address of the managed node.</p>
  final pulumi.Input<String>? ipAddress;
  /// <p>Indicates whether the latest version of SSM Agent is running on your Linux managed node. This field doesn't indicate whether or not the latest version is installed on Windows managed nodes, because some older versions of Windows Server use the EC2Config service to process Systems Manager requests.</p>
  final pulumi.Input<bool>? isLatestVersion;
  /// <p>The date the association was last run.</p>
  final pulumi.Input<String>? lastAssociationExecutionDate;
  /// <p>The date and time when the agent last pinged the Systems Manager service. </p>
  final pulumi.Input<String>? lastPingDateTime;
  /// <p>The last date the association was successfully run.</p>
  final pulumi.Input<String>? lastSuccessfulAssociationExecutionDate;
  /// <p>The name assigned to an on-premises server, edge device, or virtual machine (VM) when it is activated as a Systems Manager managed node. The name is specified as the <code>DefaultInstanceName</code> property using the <a>CreateActivation</a> command. It is applied to the managed node by specifying the Activation Code and Activation ID when you install SSM Agent on the node, as explained in <a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html'>Install SSM Agent for a hybrid and multicloud environment (Linux)</a> and <a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html'>Install SSM Agent for a hybrid and multicloud environment (Windows)</a>. To retrieve the <code>Name</code> tag of an EC2 instance, use the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'>DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'>describe-instances</a> in the <i>Amazon Web Services CLI Command Reference</i>.</p>
  final pulumi.Input<String>? name;
  /// <p>Connection status of SSM Agent. </p> <note> <p>The status <code>Inactive</code> has been deprecated and is no longer in use.</p> </note>
  final pulumi.Input<PingStatusEnumValue>? pingStatus;
  /// <p>The name of the operating system platform running on your managed node. </p>
  final pulumi.Input<String>? platformName;
  /// <p>The operating system platform type. </p>
  final pulumi.Input<PlatformTypeEnumValue>? platformType;
  /// <p>The version of the OS platform running on your managed node. </p>
  final pulumi.Input<String>? platformVersion;
  /// <p>The date the server or VM was registered with Amazon Web Services as a managed node.</p>
  final pulumi.Input<String>? registrationDate;
  /// <p>The type of instance. Instances are either EC2 instances or managed instances. </p>
  final pulumi.Input<ResourceTypeEnumValue>? resourceType;
  /// <p>The ID of the source resource. For IoT Greengrass devices, <code>SourceId</code> is the Thing name. </p>
  final pulumi.Input<String>? sourceId;
  /// <p>The type of the source resource. For IoT Greengrass devices, <code>SourceType</code> is <code>AWS::IoT::Thing</code>. </p>
  final pulumi.Input<SourceTypeEnumValue>? sourceType;

  /// Creates a new [AwsSsmInstanceInformationProperties].
  /// [activationId] <p>The activation ID created by Amazon Web Services Systems Manager when the server or virtual machine (VM) was registered.</p>
  /// [agentVersion] <p>The version of SSM Agent running on your Linux managed node. </p>
  /// [associationOverview] <p>Information about the association.</p>
  /// [associationStatus] <p>The status of the association.</p>
  /// [computerName] <p>The fully qualified host name of the managed node.</p>
  /// [iamRole] <p>The Identity and Access Management (IAM) role assigned to the on-premises Systems Manager managed node. This call doesn't return the IAM role for Amazon Elastic Compute Cloud (Amazon EC2) instances. To retrieve the IAM role for an EC2 instance, use the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'>DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'>describe-instances</a> in the <i>Amazon Web Services CLI Command Reference</i>.</p>
  /// [instanceId] <p>The managed node ID. </p>
  /// [ipAddress] <p>The IP address of the managed node.</p>
  /// [isLatestVersion] <p>Indicates whether the latest version of SSM Agent is running on your Linux managed node. This field doesn't indicate whether or not the latest version is installed on Windows managed nodes, because some older versions of Windows Server use the EC2Config service to process Systems Manager requests.</p>
  /// [lastAssociationExecutionDate] <p>The date the association was last run.</p>
  /// [lastPingDateTime] <p>The date and time when the agent last pinged the Systems Manager service. </p>
  /// [lastSuccessfulAssociationExecutionDate] <p>The last date the association was successfully run.</p>
  /// [name] <p>The name assigned to an on-premises server, edge device, or virtual machine (VM) when it is activated as a Systems Manager managed node. The name is specified as the <code>DefaultInstanceName</code> property using the <a>CreateActivation</a> command. It is applied to the managed node by specifying the Activation Code and Activation ID when you install SSM Agent on the node, as explained in <a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html'>Install SSM Agent for a hybrid and multicloud environment (Linux)</a> and <a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html'>Install SSM Agent for a hybrid and multicloud environment (Windows)</a>. To retrieve the <code>Name</code> tag of an EC2 instance, use the Amazon EC2 <code>DescribeInstances</code> operation. For information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'>DescribeInstances</a> in the <i>Amazon EC2 API Reference</i> or <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'>describe-instances</a> in the <i>Amazon Web Services CLI Command Reference</i>.</p>
  /// [pingStatus] <p>Connection status of SSM Agent. </p> <note> <p>The status <code>Inactive</code> has been deprecated and is no longer in use.</p> </note>
  /// [platformName] <p>The name of the operating system platform running on your managed node. </p>
  /// [platformType] <p>The operating system platform type. </p>
  /// [platformVersion] <p>The version of the OS platform running on your managed node. </p>
  /// [registrationDate] <p>The date the server or VM was registered with Amazon Web Services as a managed node.</p>
  /// [resourceType] <p>The type of instance. Instances are either EC2 instances or managed instances. </p>
  /// [sourceId] <p>The ID of the source resource. For IoT Greengrass devices, <code>SourceId</code> is the Thing name. </p>
  /// [sourceType] <p>The type of the source resource. For IoT Greengrass devices, <code>SourceType</code> is <code>AWS::IoT::Thing</code>. </p>
  AwsSsmInstanceInformationProperties({
    this.activationId,
    this.agentVersion,
    this.associationOverview,
    this.associationStatus,
    this.computerName,
    this.iamRole,
    this.instanceId,
    this.ipAddress,
    this.isLatestVersion,
    this.lastAssociationExecutionDate,
    this.lastPingDateTime,
    this.lastSuccessfulAssociationExecutionDate,
    this.name,
    this.pingStatus,
    this.platformName,
    this.platformType,
    this.platformVersion,
    this.registrationDate,
    this.resourceType,
    this.sourceId,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationId': ?activationId,
      'agentVersion': ?agentVersion,
      'associationOverview': ?pulumi.Input.mapOptionalInputValue<InstanceAggregatedAssociationOverview, Map<String, dynamic>>(associationOverview, (value) => value.toMap()),
      'associationStatus': ?associationStatus,
      'computerName': ?computerName,
      'iamRole': ?iamRole,
      'instanceId': ?instanceId,
      'ipAddress': ?ipAddress,
      'isLatestVersion': ?isLatestVersion,
      'lastAssociationExecutionDate': ?lastAssociationExecutionDate,
      'lastPingDateTime': ?lastPingDateTime,
      'lastSuccessfulAssociationExecutionDate': ?lastSuccessfulAssociationExecutionDate,
      'name': ?name,
      'pingStatus': ?pulumi.Input.mapOptionalInputValue<PingStatusEnumValue, Map<String, dynamic>>(pingStatus, (value) => value.toMap()),
      'platformName': ?platformName,
      'platformType': ?pulumi.Input.mapOptionalInputValue<PlatformTypeEnumValue, Map<String, dynamic>>(platformType, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'registrationDate': ?registrationDate,
      'resourceType': ?pulumi.Input.mapOptionalInputValue<ResourceTypeEnumValue, Map<String, dynamic>>(resourceType, (value) => value.toMap()),
      'sourceId': ?sourceId,
      'sourceType': ?pulumi.Input.mapOptionalInputValue<SourceTypeEnumValue, Map<String, dynamic>>(sourceType, (value) => value.toMap()),
    };
  }

  factory AwsSsmInstanceInformationProperties.fromMap(Map<String, dynamic> map) {
    return AwsSsmInstanceInformationProperties(
      activationId: map['activationId'] == null ? null : (map['activationId']! as String).input(),
      agentVersion: map['agentVersion'] == null ? null : (map['agentVersion']! as String).input(),
      associationOverview: map['associationOverview'] == null ? null : (InstanceAggregatedAssociationOverview.fromMap((map['associationOverview']! as Map).cast<String, dynamic>())).input(),
      associationStatus: map['associationStatus'] == null ? null : (map['associationStatus']! as String).input(),
      computerName: map['computerName'] == null ? null : (map['computerName']! as String).input(),
      iamRole: map['iamRole'] == null ? null : (map['iamRole']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      isLatestVersion: map['isLatestVersion'] == null ? null : (map['isLatestVersion']! as bool).input(),
      lastAssociationExecutionDate: map['lastAssociationExecutionDate'] == null ? null : (map['lastAssociationExecutionDate']! as String).input(),
      lastPingDateTime: map['lastPingDateTime'] == null ? null : (map['lastPingDateTime']! as String).input(),
      lastSuccessfulAssociationExecutionDate: map['lastSuccessfulAssociationExecutionDate'] == null ? null : (map['lastSuccessfulAssociationExecutionDate']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pingStatus: map['pingStatus'] == null ? null : (PingStatusEnumValue.fromMap((map['pingStatus']! as Map).cast<String, dynamic>())).input(),
      platformName: map['platformName'] == null ? null : (map['platformName']! as String).input(),
      platformType: map['platformType'] == null ? null : (PlatformTypeEnumValue.fromMap((map['platformType']! as Map).cast<String, dynamic>())).input(),
      platformVersion: map['platformVersion'] == null ? null : (map['platformVersion']! as String).input(),
      registrationDate: map['registrationDate'] == null ? null : (map['registrationDate']! as String).input(),
      resourceType: map['resourceType'] == null ? null : (ResourceTypeEnumValue.fromMap((map['resourceType']! as Map).cast<String, dynamic>())).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId']! as String).input(),
      sourceType: map['sourceType'] == null ? null : (SourceTypeEnumValue.fromMap((map['sourceType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

