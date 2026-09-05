// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_block_device_mapping.dart';
import 'get_ami_filter.dart';
import 'get_ami_product_code.dart';

/// Result data returned by getAmi.
class GetAmiResult {
  final bool? allowUnsafeFilter;
  /// OS architecture of the AMI (ie: `i386` or `x8664`).
  final String? architecture;
  /// ARN of the AMI.
  final String? arn;
  /// Set of objects with block device mappings of the AMI. See `blockDeviceMappings` below.
  final List<GetAmiBlockDeviceMapping>? blockDeviceMappings;
  /// Boot mode of the image.
  final String? bootMode;
  /// Date and time the image was created.
  final String? creationDate;
  /// Date and time when the image will be deprecated.
  final String? deprecationTime;
  /// Description of the AMI that was provided during image creation.
  final String? description;
  /// Whether enhanced networking with ENA is enabled.
  final bool? enaSupport;
  final List<String>? executableUsers;
  final List<GetAmiFilter>? filters;
  /// Hypervisor type of the image.
  final String? hypervisor;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ID of the AMI. Should be the same as the resource `id`.
  final String? imageId;
  /// Location of the AMI.
  final String? imageLocation;
  /// AWS account alias (for example, `amazon`, `self`) or the AWS account ID of the AMI owner.
  final String? imageOwnerAlias;
  /// Type of image.
  final String? imageType;
  /// Instance Metadata Service (IMDS) support mode for the image. Set to `v2.0` if instances ran from this image enforce IMDSv2.
  final String? imdsSupport;
  final bool? includeDeprecated;
  /// Kernel associated with the image, if any. Only applicable for machine images.
  final String? kernelId;
  /// Date and time, in ISO 8601 date-time format, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  final String? lastLaunchedTime;
  final bool? mostRecent;
  /// Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  final String? name;
  final String? nameRegex;
  /// AWS account ID of the image owner.
  final String? ownerId;
  final List<String>? owners;
  /// Value is Windows for `Windows` AMIs; otherwise blank.
  final String? platform;
  /// Platform details associated with the billing code of the AMI.
  final String? platformDetails;
  /// Any product codes associated with the AMI. See `productCodes` below.
  final List<GetAmiProductCode>? productCodes;
  /// `true` if the image has public launch permissions.
  final bool? public;
  /// RAM disk associated with the image, if any. Only applicable for machine images.
  final String? ramdiskId;
  final String? region;
  /// Device name of the root device.
  final String? rootDeviceName;
  /// Type of root device (ie: `ebs` or `instance-store`).
  final String? rootDeviceType;
  /// Snapshot id associated with the root device, if any (only applies to `ebs` root devices).
  final String? rootSnapshotId;
  /// Whether enhanced networking is enabled.
  final String? sriovNetSupport;
  /// Current state of the AMI. If the state is `available`, the image is successfully registered and can be used to launch an instance.
  final String? state;
  /// Describes a state change. Fields are `UNSET` if not available. See `stateReason` below.
  final Map<String, String>? stateReason;
  /// Any tags assigned to the image.
  final Map<String, String>? tags;
  /// If the image is configured for NitroTPM support, the value is `v2.0`.
  final String? tpmSupport;
  final String? uefiData;
  /// Operation of the Amazon EC2 instance and the billing code that is associated with the AMI.
  final String? usageOperation;
  /// Type of virtualization of the AMI (ie: `hvm` or `paravirtual`).
  final String? virtualizationType;

  /// Creates a new [GetAmiResult].
  /// [allowUnsafeFilter] Optional.
  /// [architecture] OS architecture of the AMI (ie: `i386` or `x8664`).
  /// [arn] ARN of the AMI.
  /// [blockDeviceMappings] Set of objects with block device mappings of the AMI. See `blockDeviceMappings` below.
  /// [bootMode] Boot mode of the image.
  /// [creationDate] Date and time the image was created.
  /// [deprecationTime] Date and time when the image will be deprecated.
  /// [description] Description of the AMI that was provided during image creation.
  /// [enaSupport] Whether enhanced networking with ENA is enabled.
  /// [executableUsers] Optional.
  /// [filters] Optional.
  /// [hypervisor] Hypervisor type of the image.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageId] ID of the AMI. Should be the same as the resource `id`.
  /// [imageLocation] Location of the AMI.
  /// [imageOwnerAlias] AWS account alias (for example, `amazon`, `self`) or the AWS account ID of the AMI owner.
  /// [imageType] Type of image.
  /// [imdsSupport] Instance Metadata Service (IMDS) support mode for the image. Set to `v2.0` if instances ran from this image enforce IMDSv2.
  /// [includeDeprecated] Optional.
  /// [kernelId] Kernel associated with the image, if any. Only applicable for machine images.
  /// [lastLaunchedTime] Date and time, in ISO 8601 date-time format, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  /// [mostRecent] Optional.
  /// [name] Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  /// [nameRegex] Optional.
  /// [ownerId] AWS account ID of the image owner.
  /// [owners] Optional.
  /// [platform] Value is Windows for `Windows` AMIs; otherwise blank.
  /// [platformDetails] Platform details associated with the billing code of the AMI.
  /// [productCodes] Any product codes associated with the AMI. See `productCodes` below.
  /// [public] `true` if the image has public launch permissions.
  /// [ramdiskId] RAM disk associated with the image, if any. Only applicable for machine images.
  /// [region] Optional.
  /// [rootDeviceName] Device name of the root device.
  /// [rootDeviceType] Type of root device (ie: `ebs` or `instance-store`).
  /// [rootSnapshotId] Snapshot id associated with the root device, if any (only applies to `ebs` root devices).
  /// [sriovNetSupport] Whether enhanced networking is enabled.
  /// [state] Current state of the AMI. If the state is `available`, the image is successfully registered and can be used to launch an instance.
  /// [stateReason] Describes a state change. Fields are `UNSET` if not available. See `stateReason` below.
  /// [tags] Any tags assigned to the image.
  /// [tpmSupport] If the image is configured for NitroTPM support, the value is `v2.0`.
  /// [uefiData] Optional.
  /// [usageOperation] Operation of the Amazon EC2 instance and the billing code that is associated with the AMI.
  /// [virtualizationType] Type of virtualization of the AMI (ie: `hvm` or `paravirtual`).
  const GetAmiResult({
    this.allowUnsafeFilter,
    this.architecture,
    this.arn,
    this.blockDeviceMappings,
    this.bootMode,
    this.creationDate,
    this.deprecationTime,
    this.description,
    this.enaSupport,
    this.executableUsers,
    this.filters,
    this.hypervisor,
    this.id,
    this.imageId,
    this.imageLocation,
    this.imageOwnerAlias,
    this.imageType,
    this.imdsSupport,
    this.includeDeprecated,
    this.kernelId,
    this.lastLaunchedTime,
    this.mostRecent,
    this.name,
    this.nameRegex,
    this.ownerId,
    this.owners,
    this.platform,
    this.platformDetails,
    this.productCodes,
    this.public,
    this.ramdiskId,
    this.region,
    this.rootDeviceName,
    this.rootDeviceType,
    this.rootSnapshotId,
    this.sriovNetSupport,
    this.state,
    this.stateReason,
    this.tags,
    this.tpmSupport,
    this.uefiData,
    this.usageOperation,
    this.virtualizationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUnsafeFilter': ?allowUnsafeFilter,
      'architecture': ?architecture,
      'arn': ?arn,
      'blockDeviceMappings': ?(() { final guardedValue = blockDeviceMappings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAmiBlockDeviceMapping, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'bootMode': ?bootMode,
      'creationDate': ?creationDate,
      'deprecationTime': ?deprecationTime,
      'description': ?description,
      'enaSupport': ?enaSupport,
      'executableUsers': ?executableUsers,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAmiFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hypervisor': ?hypervisor,
      'id': ?id,
      'imageId': ?imageId,
      'imageLocation': ?imageLocation,
      'imageOwnerAlias': ?imageOwnerAlias,
      'imageType': ?imageType,
      'imdsSupport': ?imdsSupport,
      'includeDeprecated': ?includeDeprecated,
      'kernelId': ?kernelId,
      'lastLaunchedTime': ?lastLaunchedTime,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'ownerId': ?ownerId,
      'owners': ?owners,
      'platform': ?platform,
      'platformDetails': ?platformDetails,
      'productCodes': ?(() { final guardedValue = productCodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAmiProductCode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'public': ?public,
      'ramdiskId': ?ramdiskId,
      'region': ?region,
      'rootDeviceName': ?rootDeviceName,
      'rootDeviceType': ?rootDeviceType,
      'rootSnapshotId': ?rootSnapshotId,
      'sriovNetSupport': ?sriovNetSupport,
      'state': ?state,
      'stateReason': ?stateReason,
      'tags': ?tags,
      'tpmSupport': ?tpmSupport,
      'uefiData': ?uefiData,
      'usageOperation': ?usageOperation,
      'virtualizationType': ?virtualizationType,
    };
  }

  factory GetAmiResult.fromMap(Map<String, dynamic> map) {
    return GetAmiResult(
      allowUnsafeFilter: (() { final guardedValue = map['allowUnsafeFilter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blockDeviceMappings: (() { final guardedValue = map['blockDeviceMappings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAmiBlockDeviceMapping>(guardedValue, (value) => GetAmiBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())); })(),
      bootMode: (() { final guardedValue = map['bootMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecationTime: (() { final guardedValue = map['deprecationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enaSupport: (() { final guardedValue = map['enaSupport']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      executableUsers: (() { final guardedValue = map['executableUsers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAmiFilter>(guardedValue, (value) => GetAmiFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      hypervisor: (() { final guardedValue = map['hypervisor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageLocation: (() { final guardedValue = map['imageLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageOwnerAlias: (() { final guardedValue = map['imageOwnerAlias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageType: (() { final guardedValue = map['imageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imdsSupport: (() { final guardedValue = map['imdsSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kernelId: (() { final guardedValue = map['kernelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastLaunchedTime: (() { final guardedValue = map['lastLaunchedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platformDetails: (() { final guardedValue = map['platformDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productCodes: (() { final guardedValue = map['productCodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAmiProductCode>(guardedValue, (value) => GetAmiProductCode.fromMap((value as Map).cast<String, dynamic>())); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ramdiskId: (() { final guardedValue = map['ramdiskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootDeviceName: (() { final guardedValue = map['rootDeviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootDeviceType: (() { final guardedValue = map['rootDeviceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rootSnapshotId: (() { final guardedValue = map['rootSnapshotId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sriovNetSupport: (() { final guardedValue = map['sriovNetSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateReason: (() { final guardedValue = map['stateReason']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tpmSupport: (() { final guardedValue = map['tpmSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uefiData: (() { final guardedValue = map['uefiData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usageOperation: (() { final guardedValue = map['usageOperation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualizationType: (() { final guardedValue = map['virtualizationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
