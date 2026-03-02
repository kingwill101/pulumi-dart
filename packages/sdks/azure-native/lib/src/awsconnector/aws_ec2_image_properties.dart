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
  /// <p>The architecture of the image.</p>
  final pulumi.Input<ArchitectureValuesEnumValue>? architecture;
  /// <p>Any block device mapping entries.</p>
  final pulumi.Input<List<BlockDeviceMapping>>? blockDeviceMappings;
  /// <p>The boot mode of the image. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'>Boot modes</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final pulumi.Input<BootModeValuesEnumValue>? bootMode;
  /// <p>The date and time the image was created.</p>
  final pulumi.Input<String>? creationDate;
  /// <p>The date and time to deprecate the AMI, in UTC, in the following format: <i>YYYY</i>-<i>MM</i>-<i>DD</i>T<i>HH</i>:<i>MM</i>:<i>SS</i>Z. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute.</p>
  final pulumi.Input<String>? deprecationTime;
  /// <p>Indicates whether deregistration protection is enabled for the AMI.</p>
  final pulumi.Input<String>? deregistrationProtection;
  /// <p>The description of the AMI that was provided during image creation.</p>
  final pulumi.Input<String>? description;
  /// <p>Specifies whether enhanced networking with ENA is enabled.</p>
  final pulumi.Input<bool>? enaSupport;
  /// <p>The hypervisor type of the image. Only <code>xen</code> is supported. <code>ovm</code> is not supported.</p>
  final pulumi.Input<HypervisorTypeEnumValue>? hypervisor;
  /// <p>The ID of the AMI.</p>
  final pulumi.Input<String>? imageId;
  /// <p>The location of the AMI.</p>
  final pulumi.Input<String>? imageLocation;
  /// <p>The owner alias (<code>amazon</code> | <code>aws-marketplace</code>).</p>
  final pulumi.Input<String>? imageOwnerAlias;
  /// <p>The type of image.</p>
  final pulumi.Input<ImageTypeValuesEnumValue>? imageType;
  /// <p>If <code>v2.0</code>, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have <code>HttpTokens</code> automatically set to <code>required</code> so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, <code>HttpPutResponseHopLimit</code> is set to <code>2</code>. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration'>Configure the AMI</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final pulumi.Input<ImdsSupportValuesEnumValue>? imdsSupport;
  /// <p>The kernel associated with the image, if any. Only applicable for machine images.</p>
  final pulumi.Input<String>? kernelId;
  /// <p>The date and time, in <a href='http://www.iso.org/iso/iso8601'>ISO 8601 date-time format</a>, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported.</p> <note> <p> <code>lastLaunchedTime</code> data is available starting April 2017.</p> </note>
  final pulumi.Input<String>? lastLaunchedTime;
  /// <p>The name of the AMI that was provided during image creation.</p>
  final pulumi.Input<String>? name;
  /// <p>The ID of the Amazon Web Services account that owns the image.</p>
  final pulumi.Input<String>? ownerId;
  /// <p>This value is set to <code>windows</code> for Windows AMIs; otherwise, it is blank.</p>
  final pulumi.Input<PlatformValuesEnumValue>? platform;
  /// <p>The platform details associated with the billing code of the AMI. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html'>Understand AMI billing information</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final pulumi.Input<String>? platformDetails;
  /// <p>Any product codes associated with the AMI.</p>
  final pulumi.Input<List<ProductCode>>? productCodes;
  /// <p>Indicates whether the image has public launch permissions. The value is <code>true</code> if this image has public launch permissions or <code>false</code> if it has only implicit and explicit launch permissions.</p>
  final pulumi.Input<bool>? public;
  /// <p>The RAM disk associated with the image, if any. Only applicable for machine images.</p>
  final pulumi.Input<String>? ramdiskId;
  /// <p>The device name of the root device volume (for example, <code>/dev/sda1</code>).</p>
  final pulumi.Input<String>? rootDeviceName;
  /// <p>The type of root device used by the AMI. The AMI can use an Amazon EBS volume or an instance store volume.</p>
  final pulumi.Input<DeviceTypeEnumValue>? rootDeviceType;
  /// <p>The ID of the instance that the AMI was created from if the AMI was created using <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html'>CreateImage</a>. This field only appears if the AMI was created using CreateImage.</p>
  final pulumi.Input<String>? sourceInstanceId;
  /// <p>Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.</p>
  final pulumi.Input<String>? sriovNetSupport;
  /// <p>The current state of the AMI. If the state is <code>available</code>, the image is successfully registered and can be used to launch an instance.</p>
  final pulumi.Input<ImageStateEnumValue>? state;
  /// <p>The reason for the state change.</p>
  final pulumi.Input<StateReason>? stateReason;
  /// <p>Any tags assigned to the image.</p>
  final pulumi.Input<List<Tag>>? tags;
  /// <p>If the image is configured for NitroTPM support, the value is <code>v2.0</code>. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'>NitroTPM</a> in the <i>Amazon EC2 User Guide</i>.</p>
  final pulumi.Input<TpmSupportValuesEnumValue>? tpmSupport;
  /// <p>The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. <code>usageOperation</code> corresponds to the <a href='https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation'>lineitem/Operation</a> column on your Amazon Web Services Cost and Usage Report and in the <a href='https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html'>Amazon Web Services Price List API</a>. You can view these fields on the <b>Instances</b> or <b>AMIs</b> pages in the Amazon EC2 console, or in the responses that are returned by the <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html'>DescribeImages</a> command in the Amazon EC2 API, or the <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html'>describe-images</a> command in the CLI.</p>
  final pulumi.Input<String>? usageOperation;
  /// <p>The type of virtualization of the AMI.</p>
  final pulumi.Input<VirtualizationTypeEnumValue>? virtualizationType;

  /// Creates a new [AwsEc2ImageProperties].
  /// [architecture] <p>The architecture of the image.</p>
  /// [blockDeviceMappings] <p>Any block device mapping entries.</p>
  /// [bootMode] <p>The boot mode of the image. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html'>Boot modes</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [creationDate] <p>The date and time the image was created.</p>
  /// [deprecationTime] <p>The date and time to deprecate the AMI, in UTC, in the following format: <i>YYYY</i>-<i>MM</i>-<i>DD</i>T<i>HH</i>:<i>MM</i>:<i>SS</i>Z. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute.</p>
  /// [deregistrationProtection] <p>Indicates whether deregistration protection is enabled for the AMI.</p>
  /// [description] <p>The description of the AMI that was provided during image creation.</p>
  /// [enaSupport] <p>Specifies whether enhanced networking with ENA is enabled.</p>
  /// [hypervisor] <p>The hypervisor type of the image. Only <code>xen</code> is supported. <code>ovm</code> is not supported.</p>
  /// [imageId] <p>The ID of the AMI.</p>
  /// [imageLocation] <p>The location of the AMI.</p>
  /// [imageOwnerAlias] <p>The owner alias (<code>amazon</code> | <code>aws-marketplace</code>).</p>
  /// [imageType] <p>The type of image.</p>
  /// [imdsSupport] <p>If <code>v2.0</code>, it indicates that IMDSv2 is specified in the AMI. Instances launched from this AMI will have <code>HttpTokens</code> automatically set to <code>required</code> so that, by default, the instance requires that IMDSv2 is used when requesting instance metadata. In addition, <code>HttpPutResponseHopLimit</code> is set to <code>2</code>. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration'>Configure the AMI</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [kernelId] <p>The kernel associated with the image, if any. Only applicable for machine images.</p>
  /// [lastLaunchedTime] <p>The date and time, in <a href='http://www.iso.org/iso/iso8601'>ISO 8601 date-time format</a>, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported.</p> <note> <p> <code>lastLaunchedTime</code> data is available starting April 2017.</p> </note>
  /// [name] <p>The name of the AMI that was provided during image creation.</p>
  /// [ownerId] <p>The ID of the Amazon Web Services account that owns the image.</p>
  /// [platform] <p>This value is set to <code>windows</code> for Windows AMIs; otherwise, it is blank.</p>
  /// [platformDetails] <p>The platform details associated with the billing code of the AMI. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html'>Understand AMI billing information</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [productCodes] <p>Any product codes associated with the AMI.</p>
  /// [public] <p>Indicates whether the image has public launch permissions. The value is <code>true</code> if this image has public launch permissions or <code>false</code> if it has only implicit and explicit launch permissions.</p>
  /// [ramdiskId] <p>The RAM disk associated with the image, if any. Only applicable for machine images.</p>
  /// [rootDeviceName] <p>The device name of the root device volume (for example, <code>/dev/sda1</code>).</p>
  /// [rootDeviceType] <p>The type of root device used by the AMI. The AMI can use an Amazon EBS volume or an instance store volume.</p>
  /// [sourceInstanceId] <p>The ID of the instance that the AMI was created from if the AMI was created using <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateImage.html'>CreateImage</a>. This field only appears if the AMI was created using CreateImage.</p>
  /// [sriovNetSupport] <p>Specifies whether enhanced networking with the Intel 82599 Virtual Function interface is enabled.</p>
  /// [state] <p>The current state of the AMI. If the state is <code>available</code>, the image is successfully registered and can be used to launch an instance.</p>
  /// [stateReason] <p>The reason for the state change.</p>
  /// [tags] <p>Any tags assigned to the image.</p>
  /// [tpmSupport] <p>If the image is configured for NitroTPM support, the value is <code>v2.0</code>. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html'>NitroTPM</a> in the <i>Amazon EC2 User Guide</i>.</p>
  /// [usageOperation] <p>The operation of the Amazon EC2 instance and the billing code that is associated with the AMI. <code>usageOperation</code> corresponds to the <a href='https://docs.aws.amazon.com/cur/latest/userguide/Lineitem-columns.html#Lineitem-details-O-Operation'>lineitem/Operation</a> column on your Amazon Web Services Cost and Usage Report and in the <a href='https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/price-changes.html'>Amazon Web Services Price List API</a>. You can view these fields on the <b>Instances</b> or <b>AMIs</b> pages in the Amazon EC2 console, or in the responses that are returned by the <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html'>DescribeImages</a> command in the Amazon EC2 API, or the <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html'>describe-images</a> command in the CLI.</p>
  /// [virtualizationType] <p>The type of virtualization of the AMI.</p>
  AwsEc2ImageProperties({
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
      architecture: map['architecture'] == null ? null : (ArchitectureValuesEnumValue.fromMap((map['architecture']! as Map).cast<String, dynamic>())).input(),
      blockDeviceMappings: map['blockDeviceMappings'] == null ? null : (pulumi.Input.decodeList<BlockDeviceMapping>(map['blockDeviceMappings']!, (value) => BlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootMode: map['bootMode'] == null ? null : (BootModeValuesEnumValue.fromMap((map['bootMode']! as Map).cast<String, dynamic>())).input(),
      creationDate: map['creationDate'] == null ? null : (map['creationDate']! as String).input(),
      deprecationTime: map['deprecationTime'] == null ? null : (map['deprecationTime']! as String).input(),
      deregistrationProtection: map['deregistrationProtection'] == null ? null : (map['deregistrationProtection']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enaSupport: map['enaSupport'] == null ? null : (map['enaSupport']! as bool).input(),
      hypervisor: map['hypervisor'] == null ? null : (HypervisorTypeEnumValue.fromMap((map['hypervisor']! as Map).cast<String, dynamic>())).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      imageLocation: map['imageLocation'] == null ? null : (map['imageLocation']! as String).input(),
      imageOwnerAlias: map['imageOwnerAlias'] == null ? null : (map['imageOwnerAlias']! as String).input(),
      imageType: map['imageType'] == null ? null : (ImageTypeValuesEnumValue.fromMap((map['imageType']! as Map).cast<String, dynamic>())).input(),
      imdsSupport: map['imdsSupport'] == null ? null : (ImdsSupportValuesEnumValue.fromMap((map['imdsSupport']! as Map).cast<String, dynamic>())).input(),
      kernelId: map['kernelId'] == null ? null : (map['kernelId']! as String).input(),
      lastLaunchedTime: map['lastLaunchedTime'] == null ? null : (map['lastLaunchedTime']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId']! as String).input(),
      platform: map['platform'] == null ? null : (PlatformValuesEnumValue.fromMap((map['platform']! as Map).cast<String, dynamic>())).input(),
      platformDetails: map['platformDetails'] == null ? null : (map['platformDetails']! as String).input(),
      productCodes: map['productCodes'] == null ? null : (pulumi.Input.decodeList<ProductCode>(map['productCodes']!, (value) => ProductCode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      public: map['public'] == null ? null : (map['public']! as bool).input(),
      ramdiskId: map['ramdiskId'] == null ? null : (map['ramdiskId']! as String).input(),
      rootDeviceName: map['rootDeviceName'] == null ? null : (map['rootDeviceName']! as String).input(),
      rootDeviceType: map['rootDeviceType'] == null ? null : (DeviceTypeEnumValue.fromMap((map['rootDeviceType']! as Map).cast<String, dynamic>())).input(),
      sourceInstanceId: map['sourceInstanceId'] == null ? null : (map['sourceInstanceId']! as String).input(),
      sriovNetSupport: map['sriovNetSupport'] == null ? null : (map['sriovNetSupport']! as String).input(),
      state: map['state'] == null ? null : (ImageStateEnumValue.fromMap((map['state']! as Map).cast<String, dynamic>())).input(),
      stateReason: map['stateReason'] == null ? null : (StateReason.fromMap((map['stateReason']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<Tag>(map['tags']!, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tpmSupport: map['tpmSupport'] == null ? null : (TpmSupportValuesEnumValue.fromMap((map['tpmSupport']! as Map).cast<String, dynamic>())).input(),
      usageOperation: map['usageOperation'] == null ? null : (map['usageOperation']! as String).input(),
      virtualizationType: map['virtualizationType'] == null ? null : (VirtualizationTypeEnumValue.fromMap((map['virtualizationType']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

