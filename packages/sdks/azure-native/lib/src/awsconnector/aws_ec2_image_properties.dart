// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'architecture_values_enum_value.dart';
import 'block_device_mapping.dart';
import 'boot_mode_values_enum_value.dart';
import 'device_type_enum_value.dart';
import 'hypervisor_type_enum_value.dart';
import 'image_state_enum_value.dart';
import 'image_type_values_enum_value.dart';
import 'imds_support_values_enum_value.dart';
import 'platform_values_enum_value.dart';
import 'product_code.dart';
import 'state_reason.dart';
import 'tag.dart';
import 'tpm_support_values_enum_value.dart';
import 'virtualization_type_enum_value.dart';

/// Definition of awsEc2Image
class AwsEc2ImageProperties {
  /// &lt;p&gt;The architecture of the image.&lt;/p&gt;
  final pulumi.Input<ArchitectureValuesEnumValue?>? architecture;
  /// &lt;p&gt;Any block device mapping entries.&lt;/p&gt;
  final pulumi.Input<List<BlockDeviceMapping>?>? blockDeviceMappings;
  /// &lt;p&gt;The boot mode of the image. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'&gt;Boot modes&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<BootModeValuesEnumValue?>? bootMode;
  /// &lt;p&gt;The date and time the image was created.&lt;/p&gt;
  final pulumi.Input<String?>? creationDate;
  /// &lt;p&gt;The date and time to deprecate the AMI, in UTC, in the following format: &lt;i&gt;YYYY&lt;/i&gt;-&lt;i&gt;MM&lt;/i&gt;-&lt;i&gt;DD&lt;/i&gt;T&lt;i&gt;HH&lt;/i&gt;:&lt;i&gt;MM&lt;/i&gt;:&lt;i&gt;SS&lt;/i&gt;Z. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute.&lt;/p&gt;
  final pulumi.Input<String?>? deprecationTime;
  /// &lt;p&gt;Indicates whether deregistration protection is enabled for the AMI.&lt;/p&gt;
  final pulumi.Input<String?>? deregistrationProtection;
  /// &lt;p&gt;The description of the AMI that was provided during image creation.&lt;/p&gt;
  final pulumi.Input<String?>? description;
  /// &lt;p&gt;Specifies whether enhanced networking with ENA is enabled.&lt;/p&gt;
  final pulumi.Input<bool?>? enaSupport;
  /// &lt;p&gt;The hypervisor type of the image. Only &lt;code&gt;xen&lt;/code&gt; is supported. &lt;code&gt;ovm&lt;/code&gt; is not supported.&lt;/p&gt;
  final pulumi.Input<HypervisorTypeEnumValue?>? hypervisor;
  /// &lt;p&gt;The ID of the AMI.&lt;/p&gt;
  final pulumi.Input<String?>? imageId;
  /// &lt;p&gt;The location of the AMI.&lt;/p&gt;
  final pulumi.Input<String?>? imageLocation;
  /// &lt;p&gt;The owner alias (&lt;code&gt;amazon&lt;/code&gt; | &lt;code&gt;aws-marketplace&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<String?>? imageOwnerAlias;
  /// &lt;p&gt;The type of image.&lt;/p&gt;
  final pulumi.Input<ImageTypeValuesEnumValue?>? imageType;
  /// &lt;p&gt;If &lt;code&gt;v2.0&lt;/code&gt;, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have &lt;code&gt;HttpTokens&lt;/code&gt; automatically set to &lt;code&gt;required&lt;/code&gt; so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, &lt;code&gt;HttpPutResponseHopLimit&lt;/code&gt; is set to &lt;code&gt;2&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration'&gt;Configure the AMI&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<ImdsSupportValuesEnumValue?>? imdsSupport;
  /// &lt;p&gt;The kernel associated with the image, if any. Only applicable for machine images.&lt;/p&gt;
  final pulumi.Input<String?>? kernelId;
  /// &lt;p&gt;The date and time, in &lt;a href='http://www.iso.org/iso/iso8601'&gt;ISO 8601 date-time format&lt;/a&gt;, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported.&lt;/p&gt; &lt;note&gt; &lt;p&gt; &lt;code&gt;lastLaunchedTime&lt;/code&gt; data is available starting April 2017.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String?>? lastLaunchedTime;
  /// &lt;p&gt;The name of the AMI that was provided during image creation.&lt;/p&gt;
  final pulumi.Input<String?>? name;
  /// &lt;p&gt;The ID of the Amazon Web Services account that owns the image.&lt;/p&gt;
  final pulumi.Input<String?>? ownerId;
  /// &lt;p&gt;This value is set to &lt;code&gt;windows&lt;/code&gt; for Windows AMIs; otherwise, it is blank.&lt;/p&gt;
  final pulumi.Input<PlatformValuesEnumValue?>? platform;
  /// &lt;p&gt;The platform details associated with the billing code of the AMI. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html'&gt;Understand AMI billing information&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<String?>? platformDetails;
  /// &lt;p&gt;Any product codes associated with the AMI.&lt;/p&gt;
  final pulumi.Input<List<ProductCode>?>? productCodes;
  /// &lt;p&gt;Indicates whether the image has public launch permissions. The value is &lt;code&gt;true&lt;/code&gt; if this image has public launch permissions or &lt;code&gt;false&lt;/code&gt; if it has only implicit and explicit launch permissions.&lt;/p&gt;
  final pulumi.Input<bool?>? public;
  /// &lt;p&gt;The RAM disk associated with the image, if any. Only applicable for machine images.&lt;/p&gt;
  final pulumi.Input<String?>? ramdiskId;
  /// &lt;p&gt;The device name of the root device volume (for example, &lt;code&gt;/dev/sda1&lt;/code&gt;).&lt;/p&gt;
  final pulumi.Input<String?>? rootDeviceName;
  /// &lt;p&gt;The type of root device used by the AMI. The AMI can use an Amazon EBS volume or an instance store volume.&lt;/p&gt;
  final pulumi.Input<DeviceTypeEnumValue?>? rootDeviceType;
  /// &lt;p&gt;The ID of the instance that the AMI was created from if the AMI was created using &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html'&gt;CreateImage&lt;/a&gt;. This field only appears if the AMI was created using CreateImage.&lt;/p&gt;
  final pulumi.Input<String?>? sourceInstanceId;
  /// &lt;p&gt;Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.&lt;/p&gt;
  final pulumi.Input<String?>? sriovNetSupport;
  /// &lt;p&gt;The current state of the AMI. If the state is &lt;code&gt;available&lt;/code&gt;, the image is successfully registered and can be used to launch an instance.&lt;/p&gt;
  final pulumi.Input<ImageStateEnumValue?>? state;
  /// &lt;p&gt;The reason for the state change.&lt;/p&gt;
  final pulumi.Input<StateReason?>? stateReason;
  /// &lt;p&gt;Any tags assigned to the image.&lt;/p&gt;
  final pulumi.Input<List<Tag>?>? tags;
  /// &lt;p&gt;If the image is configured for NitroTPM support, the value is &lt;code&gt;v2.0&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'&gt;NitroTPM&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  final pulumi.Input<TpmSupportValuesEnumValue?>? tpmSupport;
  /// &lt;p&gt;The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. &lt;code&gt;usageOperation&lt;/code&gt; corresponds to the &lt;a href='https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation'&gt;lineitem/Operation&lt;/a&gt; column on your Amazon Web Services Cost and Usage Report and in the &lt;a href='https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html'&gt;Amazon Web Services Price List API&lt;/a&gt;. You can view these fields on the &lt;b&gt;Instances&lt;/b&gt; or &lt;b&gt;AMIs&lt;/b&gt; pages in the Amazon EC2 console, or in the responses that are returned by the &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html'&gt;DescribeImages&lt;/a&gt; command in the Amazon EC2 API, or the &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html'&gt;describe-images&lt;/a&gt; command in the CLI.&lt;/p&gt;
  final pulumi.Input<String?>? usageOperation;
  /// &lt;p&gt;The type of virtualization of the AMI.&lt;/p&gt;
  final pulumi.Input<VirtualizationTypeEnumValue?>? virtualizationType;

  /// Creates a new [AwsEc2ImageProperties].
  /// [architecture] &lt;p&gt;The architecture of the image.&lt;/p&gt;
  /// [blockDeviceMappings] &lt;p&gt;Any block device mapping entries.&lt;/p&gt;
  /// [bootMode] &lt;p&gt;The boot mode of the image. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'&gt;Boot modes&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [creationDate] &lt;p&gt;The date and time the image was created.&lt;/p&gt;
  /// [deprecationTime] &lt;p&gt;The date and time to deprecate the AMI, in UTC, in the following format: &lt;i&gt;YYYY&lt;/i&gt;-&lt;i&gt;MM&lt;/i&gt;-&lt;i&gt;DD&lt;/i&gt;T&lt;i&gt;HH&lt;/i&gt;:&lt;i&gt;MM&lt;/i&gt;:&lt;i&gt;SS&lt;/i&gt;Z. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute.&lt;/p&gt;
  /// [deregistrationProtection] &lt;p&gt;Indicates whether deregistration protection is enabled for the AMI.&lt;/p&gt;
  /// [description] &lt;p&gt;The description of the AMI that was provided during image creation.&lt;/p&gt;
  /// [enaSupport] &lt;p&gt;Specifies whether enhanced networking with ENA is enabled.&lt;/p&gt;
  /// [hypervisor] &lt;p&gt;The hypervisor type of the image. Only &lt;code&gt;xen&lt;/code&gt; is supported. &lt;code&gt;ovm&lt;/code&gt; is not supported.&lt;/p&gt;
  /// [imageId] &lt;p&gt;The ID of the AMI.&lt;/p&gt;
  /// [imageLocation] &lt;p&gt;The location of the AMI.&lt;/p&gt;
  /// [imageOwnerAlias] &lt;p&gt;The owner alias (&lt;code&gt;amazon&lt;/code&gt; | &lt;code&gt;aws-marketplace&lt;/code&gt;).&lt;/p&gt;
  /// [imageType] &lt;p&gt;The type of image.&lt;/p&gt;
  /// [imdsSupport] &lt;p&gt;If &lt;code&gt;v2.0&lt;/code&gt;, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have &lt;code&gt;HttpTokens&lt;/code&gt; automatically set to &lt;code&gt;required&lt;/code&gt; so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, &lt;code&gt;HttpPutResponseHopLimit&lt;/code&gt; is set to &lt;code&gt;2&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration'&gt;Configure the AMI&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [kernelId] &lt;p&gt;The kernel associated with the image, if any. Only applicable for machine images.&lt;/p&gt;
  /// [lastLaunchedTime] &lt;p&gt;The date and time, in &lt;a href='http://www.iso.org/iso/iso8601'&gt;ISO 8601 date-time format&lt;/a&gt;, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported.&lt;/p&gt; &lt;note&gt; &lt;p&gt; &lt;code&gt;lastLaunchedTime&lt;/code&gt; data is available starting April 2017.&lt;/p&gt; &lt;/note&gt;
  /// [name] &lt;p&gt;The name of the AMI that was provided during image creation.&lt;/p&gt;
  /// [ownerId] &lt;p&gt;The ID of the Amazon Web Services account that owns the image.&lt;/p&gt;
  /// [platform] &lt;p&gt;This value is set to &lt;code&gt;windows&lt;/code&gt; for Windows AMIs; otherwise, it is blank.&lt;/p&gt;
  /// [platformDetails] &lt;p&gt;The platform details associated with the billing code of the AMI. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html'&gt;Understand AMI billing information&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [productCodes] &lt;p&gt;Any product codes associated with the AMI.&lt;/p&gt;
  /// [public] &lt;p&gt;Indicates whether the image has public launch permissions. The value is &lt;code&gt;true&lt;/code&gt; if this image has public launch permissions or &lt;code&gt;false&lt;/code&gt; if it has only implicit and explicit launch permissions.&lt;/p&gt;
  /// [ramdiskId] &lt;p&gt;The RAM disk associated with the image, if any. Only applicable for machine images.&lt;/p&gt;
  /// [rootDeviceName] &lt;p&gt;The device name of the root device volume (for example, &lt;code&gt;/dev/sda1&lt;/code&gt;).&lt;/p&gt;
  /// [rootDeviceType] &lt;p&gt;The type of root device used by the AMI. The AMI can use an Amazon EBS volume or an instance store volume.&lt;/p&gt;
  /// [sourceInstanceId] &lt;p&gt;The ID of the instance that the AMI was created from if the AMI was created using &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html'&gt;CreateImage&lt;/a&gt;. This field only appears if the AMI was created using CreateImage.&lt;/p&gt;
  /// [sriovNetSupport] &lt;p&gt;Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.&lt;/p&gt;
  /// [state] &lt;p&gt;The current state of the AMI. If the state is &lt;code&gt;available&lt;/code&gt;, the image is successfully registered and can be used to launch an instance.&lt;/p&gt;
  /// [stateReason] &lt;p&gt;The reason for the state change.&lt;/p&gt;
  /// [tags] &lt;p&gt;Any tags assigned to the image.&lt;/p&gt;
  /// [tpmSupport] &lt;p&gt;If the image is configured for NitroTPM support, the value is &lt;code&gt;v2.0&lt;/code&gt;. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'&gt;NitroTPM&lt;/a&gt; in the &lt;i&gt;Amazon EC2 User Guide&lt;/i&gt;.&lt;/p&gt;
  /// [usageOperation] &lt;p&gt;The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. &lt;code&gt;usageOperation&lt;/code&gt; corresponds to the &lt;a href='https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation'&gt;lineitem/Operation&lt;/a&gt; column on your Amazon Web Services Cost and Usage Report and in the &lt;a href='https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html'&gt;Amazon Web Services Price List API&lt;/a&gt;. You can view these fields on the &lt;b&gt;Instances&lt;/b&gt; or &lt;b&gt;AMIs&lt;/b&gt; pages in the Amazon EC2 console, or in the responses that are returned by the &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html'&gt;DescribeImages&lt;/a&gt; command in the Amazon EC2 API, or the &lt;a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html'&gt;describe-images&lt;/a&gt; command in the CLI.&lt;/p&gt;
  /// [virtualizationType] &lt;p&gt;The type of virtualization of the AMI.&lt;/p&gt;
  const AwsEc2ImageProperties({
    this.architecture,
    this.blockDeviceMappings,
    this.bootMode,
    this.creationDate,
    this.deprecationTime,
    this.deregistrationProtection,
    this.description,
    this.enaSupport,
    this.hypervisor,
    this.imageId,
    this.imageLocation,
    this.imageOwnerAlias,
    this.imageType,
    this.imdsSupport,
    this.kernelId,
    this.lastLaunchedTime,
    this.name,
    this.ownerId,
    this.platform,
    this.platformDetails,
    this.productCodes,
    this.public,
    this.ramdiskId,
    this.rootDeviceName,
    this.rootDeviceType,
    this.sourceInstanceId,
    this.sriovNetSupport,
    this.state,
    this.stateReason,
    this.tags,
    this.tpmSupport,
    this.usageOperation,
    this.virtualizationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?pulumi.Input.mapOptionalInputValue<ArchitectureValuesEnumValue, Map<String, dynamic>>(architecture, (value) => value.toMap()),
      'blockDeviceMappings': ?pulumi.Input.mapOptionalInputValue<List<BlockDeviceMapping>, List<Map<String, dynamic>>>(blockDeviceMappings, (value) => pulumi.Input.encodeList<BlockDeviceMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootMode': ?pulumi.Input.mapOptionalInputValue<BootModeValuesEnumValue, Map<String, dynamic>>(bootMode, (value) => value.toMap()),
      'creationDate': ?creationDate,
      'deprecationTime': ?deprecationTime,
      'deregistrationProtection': ?deregistrationProtection,
      'description': ?description,
      'enaSupport': ?enaSupport,
      'hypervisor': ?pulumi.Input.mapOptionalInputValue<HypervisorTypeEnumValue, Map<String, dynamic>>(hypervisor, (value) => value.toMap()),
      'imageId': ?imageId,
      'imageLocation': ?imageLocation,
      'imageOwnerAlias': ?imageOwnerAlias,
      'imageType': ?pulumi.Input.mapOptionalInputValue<ImageTypeValuesEnumValue, Map<String, dynamic>>(imageType, (value) => value.toMap()),
      'imdsSupport': ?pulumi.Input.mapOptionalInputValue<ImdsSupportValuesEnumValue, Map<String, dynamic>>(imdsSupport, (value) => value.toMap()),
      'kernelId': ?kernelId,
      'lastLaunchedTime': ?lastLaunchedTime,
      'name': ?name,
      'ownerId': ?ownerId,
      'platform': ?pulumi.Input.mapOptionalInputValue<PlatformValuesEnumValue, Map<String, dynamic>>(platform, (value) => value.toMap()),
      'platformDetails': ?platformDetails,
      'productCodes': ?pulumi.Input.mapOptionalInputValue<List<ProductCode>, List<Map<String, dynamic>>>(productCodes, (value) => pulumi.Input.encodeList<ProductCode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'public': ?public,
      'ramdiskId': ?ramdiskId,
      'rootDeviceName': ?rootDeviceName,
      'rootDeviceType': ?pulumi.Input.mapOptionalInputValue<DeviceTypeEnumValue, Map<String, dynamic>>(rootDeviceType, (value) => value.toMap()),
      'sourceInstanceId': ?sourceInstanceId,
      'sriovNetSupport': ?sriovNetSupport,
      'state': ?pulumi.Input.mapOptionalInputValue<ImageStateEnumValue, Map<String, dynamic>>(state, (value) => value.toMap()),
      'stateReason': ?pulumi.Input.mapOptionalInputValue<StateReason, Map<String, dynamic>>(stateReason, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tpmSupport': ?pulumi.Input.mapOptionalInputValue<TpmSupportValuesEnumValue, Map<String, dynamic>>(tpmSupport, (value) => value.toMap()),
      'usageOperation': ?usageOperation,
      'virtualizationType': ?pulumi.Input.mapOptionalInputValue<VirtualizationTypeEnumValue, Map<String, dynamic>>(virtualizationType, (value) => value.toMap()),
    };
  }

  factory AwsEc2ImageProperties.fromMap(Map<String, dynamic> map) {
    return AwsEc2ImageProperties(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArchitectureValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BlockDeviceMapping>(guardedValue, (value) => BlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootMode: (() { final guardedValue = map['bootMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootModeValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deprecationTime: (() { final guardedValue = map['deprecationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deregistrationProtection: (() { final guardedValue = map['deregistrationProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enaSupport: (() { final guardedValue = map['enaSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hypervisor: (() { final guardedValue = map['hypervisor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HypervisorTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageLocation: (() { final guardedValue = map['imageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageOwnerAlias: (() { final guardedValue = map['imageOwnerAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTypeValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imdsSupport: (() { final guardedValue = map['imdsSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImdsSupportValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kernelId: (() { final guardedValue = map['kernelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastLaunchedTime: (() { final guardedValue = map['lastLaunchedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlatformValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformDetails: (() { final guardedValue = map['platformDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productCodes: (() { final guardedValue = map['productCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProductCode>(guardedValue, (value) => ProductCode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ramdiskId: (() { final guardedValue = map['ramdiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDeviceName: (() { final guardedValue = map['rootDeviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDeviceType: (() { final guardedValue = map['rootDeviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceInstanceId: (() { final guardedValue = map['sourceInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sriovNetSupport: (() { final guardedValue = map['sriovNetSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageStateEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StateReason.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tpmSupport: (() { final guardedValue = map['tpmSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TpmSupportValuesEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usageOperation: (() { final guardedValue = map['usageOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualizationType: (() { final guardedValue = map['virtualizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualizationTypeEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
