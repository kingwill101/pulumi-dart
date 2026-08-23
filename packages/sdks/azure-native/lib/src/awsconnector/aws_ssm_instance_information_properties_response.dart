// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_aggregated_association_overview_response.dart';
import 'ping_status_enum_value_response.dart';
import 'platform_type_enum_value_response.dart';
import 'resource_type_enum_value_response.dart';
import 'source_type_enum_value_response.dart';

/// Definition of awsSsmInstanceInformation
class AwsSsmInstanceInformationPropertiesResponse {
  /// &lt;p&gt;The activation ID created by Amazon Web Services Systems Manager when the server or virtual machine (VM) was registered.&lt;/p&gt;
  final pulumi.Input<String>? activationId;
  /// &lt;p&gt;The version of SSM Agent running on your Linux managed node. &lt;/p&gt;
  final pulumi.Input<String>? agentVersion;
  /// &lt;p&gt;Information about the association.&lt;/p&gt;
  final pulumi.Input<InstanceAggregatedAssociationOverviewResponse>? associationOverview;
  /// &lt;p&gt;The status of the association.&lt;/p&gt;
  final pulumi.Input<String>? associationStatus;
  /// &lt;p&gt;The fully qualified host name of the managed node.&lt;/p&gt;
  final pulumi.Input<String>? computerName;
  /// &lt;p&gt;The Identity and Access Management (IAM) role assigned to the on-premises Systems Manager managed node. This call doesn't return the IAM role for Amazon Elastic Compute Cloud (Amazon EC2) instances. To retrieve the IAM role for an EC2 instance, use the Amazon EC2 &lt;code&gt;DescribeInstances&lt;/code&gt; operation. For information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'&gt;DescribeInstances&lt;/a&gt; in the &lt;i&gt;Amazon EC2 API Reference&lt;/i&gt; or &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'&gt;describe-instances&lt;/a&gt; in the &lt;i&gt;Amazon Web Services CLI Command Reference&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? iamRole;
  /// &lt;p&gt;The managed node ID. &lt;/p&gt;
  final pulumi.Input<String>? instanceId;
  /// &lt;p&gt;The IP address of the managed node.&lt;/p&gt;
  final pulumi.Input<String>? ipAddress;
  /// &lt;p&gt;Indicates whether the latest version of SSM Agent is running on your Linux managed node. This field doesn't indicate whether or not the latest version is installed on Windows managed nodes, because some older versions of Windows Server use the EC2Config service to process Systems Manager requests.&lt;/p&gt;
  final pulumi.Input<bool>? isLatestVersion;
  /// &lt;p&gt;The date the association was last run.&lt;/p&gt;
  final pulumi.Input<String>? lastAssociationExecutionDate;
  /// &lt;p&gt;The date and time when the agent last pinged the Systems Manager service. &lt;/p&gt;
  final pulumi.Input<String>? lastPingDateTime;
  /// &lt;p&gt;The last date the association was successfully run.&lt;/p&gt;
  final pulumi.Input<String>? lastSuccessfulAssociationExecutionDate;
  /// &lt;p&gt;The name assigned to an on-premises server, edge device, or virtual machine (VM) when it is activated as a Systems Manager managed node. The name is specified as the &lt;code&gt;DefaultInstanceName&lt;/code&gt; property using the &lt;a&gt;CreateActivation&lt;/a&gt; command. It is applied to the managed node by specifying the Activation Code and Activation ID when you install SSM Agent on the node, as explained in &lt;a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html'&gt;Install SSM Agent for a hybrid and multicloud environment (Linux)&lt;/a&gt; and &lt;a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html'&gt;Install SSM Agent for a hybrid and multicloud environment (Windows)&lt;/a&gt;. To retrieve the &lt;code&gt;Name&lt;/code&gt; tag of an EC2 instance, use the Amazon EC2 &lt;code&gt;DescribeInstances&lt;/code&gt; operation. For information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'&gt;DescribeInstances&lt;/a&gt; in the &lt;i&gt;Amazon EC2 API Reference&lt;/i&gt; or &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'&gt;describe-instances&lt;/a&gt; in the &lt;i&gt;Amazon Web Services CLI Command Reference&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;Connection status of SSM Agent. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The status &lt;code&gt;Inactive&lt;/code&gt; has been deprecated and is no longer in use.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<PingStatusEnumValueResponse>? pingStatus;
  /// &lt;p&gt;The name of the operating system platform running on your managed node. &lt;/p&gt;
  final pulumi.Input<String>? platformName;
  /// &lt;p&gt;The operating system platform type. &lt;/p&gt;
  final pulumi.Input<PlatformTypeEnumValueResponse>? platformType;
  /// &lt;p&gt;The version of the OS platform running on your managed node. &lt;/p&gt;
  final pulumi.Input<String>? platformVersion;
  /// &lt;p&gt;The date the server or VM was registered with Amazon Web Services as a managed node.&lt;/p&gt;
  final pulumi.Input<String>? registrationDate;
  /// &lt;p&gt;The type of instance. Instances are either EC2 instances or managed instances. &lt;/p&gt;
  final pulumi.Input<ResourceTypeEnumValueResponse>? resourceType;
  /// &lt;p&gt;The ID of the source resource. For IoT Greengrass devices, &lt;code&gt;SourceId&lt;/code&gt; is the Thing name. &lt;/p&gt;
  final pulumi.Input<String>? sourceId;
  /// &lt;p&gt;The type of the source resource. For IoT Greengrass devices, &lt;code&gt;SourceType&lt;/code&gt; is &lt;code&gt;AWS::IoT::Thing&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<SourceTypeEnumValueResponse>? sourceType;

  /// Creates a new [AwsSsmInstanceInformationPropertiesResponse].
  /// [activationId] &lt;p&gt;The activation ID created by Amazon Web Services Systems Manager when the server or virtual machine (VM) was registered.&lt;/p&gt;
  /// [agentVersion] &lt;p&gt;The version of SSM Agent running on your Linux managed node. &lt;/p&gt;
  /// [associationOverview] &lt;p&gt;Information about the association.&lt;/p&gt;
  /// [associationStatus] &lt;p&gt;The status of the association.&lt;/p&gt;
  /// [computerName] &lt;p&gt;The fully qualified host name of the managed node.&lt;/p&gt;
  /// [iamRole] &lt;p&gt;The Identity and Access Management (IAM) role assigned to the on-premises Systems Manager managed node. This call doesn't return the IAM role for Amazon Elastic Compute Cloud (Amazon EC2) instances. To retrieve the IAM role for an EC2 instance, use the Amazon EC2 &lt;code&gt;DescribeInstances&lt;/code&gt; operation. For information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'&gt;DescribeInstances&lt;/a&gt; in the &lt;i&gt;Amazon EC2 API Reference&lt;/i&gt; or &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'&gt;describe-instances&lt;/a&gt; in the &lt;i&gt;Amazon Web Services CLI Command Reference&lt;/i&gt;.&lt;/p&gt;
  /// [instanceId] &lt;p&gt;The managed node ID. &lt;/p&gt;
  /// [ipAddress] &lt;p&gt;The IP address of the managed node.&lt;/p&gt;
  /// [isLatestVersion] &lt;p&gt;Indicates whether the latest version of SSM Agent is running on your Linux managed node. This field doesn't indicate whether or not the latest version is installed on Windows managed nodes, because some older versions of Windows Server use the EC2Config service to process Systems Manager requests.&lt;/p&gt;
  /// [lastAssociationExecutionDate] &lt;p&gt;The date the association was last run.&lt;/p&gt;
  /// [lastPingDateTime] &lt;p&gt;The date and time when the agent last pinged the Systems Manager service. &lt;/p&gt;
  /// [lastSuccessfulAssociationExecutionDate] &lt;p&gt;The last date the association was successfully run.&lt;/p&gt;
  /// [name] &lt;p&gt;The name assigned to an on-premises server, edge device, or virtual machine (VM) when it is activated as a Systems Manager managed node. The name is specified as the &lt;code&gt;DefaultInstanceName&lt;/code&gt; property using the &lt;a&gt;CreateActivation&lt;/a&gt; command. It is applied to the managed node by specifying the Activation Code and Activation ID when you install SSM Agent on the node, as explained in &lt;a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html'&gt;Install SSM Agent for a hybrid and multicloud environment (Linux)&lt;/a&gt; and &lt;a href='https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-win.html'&gt;Install SSM Agent for a hybrid and multicloud environment (Windows)&lt;/a&gt;. To retrieve the &lt;code&gt;Name&lt;/code&gt; tag of an EC2 instance, use the Amazon EC2 &lt;code&gt;DescribeInstances&lt;/code&gt; operation. For information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances.html'&gt;DescribeInstances&lt;/a&gt; in the &lt;i&gt;Amazon EC2 API Reference&lt;/i&gt; or &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html'&gt;describe-instances&lt;/a&gt; in the &lt;i&gt;Amazon Web Services CLI Command Reference&lt;/i&gt;.&lt;/p&gt;
  /// [pingStatus] &lt;p&gt;Connection status of SSM Agent. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The status &lt;code&gt;Inactive&lt;/code&gt; has been deprecated and is no longer in use.&lt;/p&gt; &lt;/note&gt;
  /// [platformName] &lt;p&gt;The name of the operating system platform running on your managed node. &lt;/p&gt;
  /// [platformType] &lt;p&gt;The operating system platform type. &lt;/p&gt;
  /// [platformVersion] &lt;p&gt;The version of the OS platform running on your managed node. &lt;/p&gt;
  /// [registrationDate] &lt;p&gt;The date the server or VM was registered with Amazon Web Services as a managed node.&lt;/p&gt;
  /// [resourceType] &lt;p&gt;The type of instance. Instances are either EC2 instances or managed instances. &lt;/p&gt;
  /// [sourceId] &lt;p&gt;The ID of the source resource. For IoT Greengrass devices, &lt;code&gt;SourceId&lt;/code&gt; is the Thing name. &lt;/p&gt;
  /// [sourceType] &lt;p&gt;The type of the source resource. For IoT Greengrass devices, &lt;code&gt;SourceType&lt;/code&gt; is &lt;code&gt;AWS::IoT::Thing&lt;/code&gt;. &lt;/p&gt;
  const AwsSsmInstanceInformationPropertiesResponse({
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
      'associationOverview': ?pulumi.Input.mapOptionalInputValue<InstanceAggregatedAssociationOverviewResponse, Map<String, dynamic>>(associationOverview, (value) => value.toMap()),
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
      'pingStatus': ?pulumi.Input.mapOptionalInputValue<PingStatusEnumValueResponse, Map<String, dynamic>>(pingStatus, (value) => value.toMap()),
      'platformName': ?platformName,
      'platformType': ?pulumi.Input.mapOptionalInputValue<PlatformTypeEnumValueResponse, Map<String, dynamic>>(platformType, (value) => value.toMap()),
      'platformVersion': ?platformVersion,
      'registrationDate': ?registrationDate,
      'resourceType': ?pulumi.Input.mapOptionalInputValue<ResourceTypeEnumValueResponse, Map<String, dynamic>>(resourceType, (value) => value.toMap()),
      'sourceId': ?sourceId,
      'sourceType': ?pulumi.Input.mapOptionalInputValue<SourceTypeEnumValueResponse, Map<String, dynamic>>(sourceType, (value) => value.toMap()),
    };
  }

  factory AwsSsmInstanceInformationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsSsmInstanceInformationPropertiesResponse(
      activationId: (() { final guardedValue = map['activationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationOverview: (() { final guardedValue = map['associationOverview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAggregatedAssociationOverviewResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      associationStatus: (() { final guardedValue = map['associationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRole: (() { final guardedValue = map['iamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isLatestVersion: (() { final guardedValue = map['isLatestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastAssociationExecutionDate: (() { final guardedValue = map['lastAssociationExecutionDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastPingDateTime: (() { final guardedValue = map['lastPingDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSuccessfulAssociationExecutionDate: (() { final guardedValue = map['lastSuccessfulAssociationExecutionDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pingStatus: (() { final guardedValue = map['pingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PingStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformName: (() { final guardedValue = map['platformName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformType: (() { final guardedValue = map['platformType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlatformTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformVersion: (() { final guardedValue = map['platformVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationDate: (() { final guardedValue = map['registrationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
