// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_block_device_mapping.dart';
import 'get_ami_filter.dart';
import 'get_ami_product_code.dart';

/// Result data returned by getAmi.
class GetAmiResult {
  final bool? allowUnsafeFilter;
  /// OS architecture of the AMI (ie: `i386` or `x8664`).
  final String architecture;
  /// ARN of the AMI.
  final String arn;
  /// Set of objects with block device mappings of the AMI. See `blockDeviceMappings` below.
  final List<GetAmiBlockDeviceMapping> blockDeviceMappings;
  /// Boot mode of the image.
  final String bootMode;
  /// Date and time the image was created.
  final String creationDate;
  /// Date and time when the image will be deprecated.
  final String deprecationTime;
  /// Description of the AMI that was provided during image creation.
  final String description;
  /// Whether enhanced networking with ENA is enabled.
  final bool enaSupport;
  final List<String>? executableUsers;
  final List<GetAmiFilter>? filters;
  /// Hypervisor type of the image.
  final String hypervisor;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ID of the AMI. Should be the same as the resource `id`.
  final String imageId;
  /// Location of the AMI.
  final String imageLocation;
  /// AWS account alias (for example, `amazon`, `self`) or the AWS account ID of the AMI owner.
  final String imageOwnerAlias;
  /// Type of image.
  final String imageType;
  /// Instance Metadata Service (IMDS) support mode for the image. Set to `v2.0` if instances ran from this image enforce IMDSv2.
  final String imdsSupport;
  final bool? includeDeprecated;
  /// Kernel associated with the image, if any. Only applicable for machine images.
  final String kernelId;
  /// Date and time, in ISO 8601 date-time format, when the AMI was last used to launch an EC2 instance. When the AMI is used to launch an instance, there is a 24-hour delay before that usage is reported. For more information, see the following [AWS document](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-last-launched-time.html).
  final String lastLaunchedTime;
  final bool? mostRecent;
  /// Name of the filter. For a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html).
  final String name;
  final String? nameRegex;
  /// AWS account ID of the image owner.
  final String ownerId;
  final List<String>? owners;
  /// Value is Windows for `Windows` AMIs; otherwise blank.
  final String platform;
  /// Platform details associated with the billing code of the AMI.
  final String platformDetails;
  /// Any product codes associated with the AMI. See `productCodes` below.
  final List<GetAmiProductCode> productCodes;
  /// `true` if the image has public launch permissions.
  final bool public;
  /// RAM disk associated with the image, if any. Only applicable for machine images.
  final String ramdiskId;
  final String region;
  /// Device name of the root device.
  final String rootDeviceName;
  /// Type of root device (ie: `ebs` or `instance-store`).
  final String rootDeviceType;
  /// Snapshot id associated with the root device, if any (only applies to `ebs` root devices).
  final String rootSnapshotId;
  /// Whether enhanced networking is enabled.
  final String sriovNetSupport;
  /// Current state of the AMI. If the state is `available`, the image is successfully registered and can be used to launch an instance.
  final String state;
  /// Describes a state change. Fields are `UNSET` if not available. See `stateReason` below.
  final Map<String, String> stateReason;
  /// Any tags assigned to the image.
  final Map<String, String> tags;
  /// If the image is configured for NitroTPM support, the value is `v2.0`.
  final String tpmSupport;
  final String? uefiData;
  /// Operation of the Amazon EC2 instance and the billing code that is associated with the AMI.
  final String usageOperation;
  /// Type of virtualization of the AMI (ie: `hvm` or `paravirtual`).
  final String virtualizationType;

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
  /// [region] Required.
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
    required this.architecture,
    required this.arn,
    required this.blockDeviceMappings,
    required this.bootMode,
    required this.creationDate,
    required this.deprecationTime,
    required this.description,
    required this.enaSupport,
    this.executableUsers,
    this.filters,
    required this.hypervisor,
    required this.id,
    required this.imageId,
    required this.imageLocation,
    required this.imageOwnerAlias,
    required this.imageType,
    required this.imdsSupport,
    this.includeDeprecated,
    required this.kernelId,
    required this.lastLaunchedTime,
    this.mostRecent,
    required this.name,
    this.nameRegex,
    required this.ownerId,
    this.owners,
    required this.platform,
    required this.platformDetails,
    required this.productCodes,
    required this.public,
    required this.ramdiskId,
    required this.region,
    required this.rootDeviceName,
    required this.rootDeviceType,
    required this.rootSnapshotId,
    required this.sriovNetSupport,
    required this.state,
    required this.stateReason,
    required this.tags,
    required this.tpmSupport,
    this.uefiData,
    required this.usageOperation,
    required this.virtualizationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUnsafeFilter': ?allowUnsafeFilter,
      'architecture': architecture,
      'arn': arn,
      'blockDeviceMappings': pulumi.Input.encodeList<GetAmiBlockDeviceMapping, Map<String, dynamic>>(blockDeviceMappings, (value) => value.toMap()),
      'bootMode': bootMode,
      'creationDate': creationDate,
      'deprecationTime': deprecationTime,
      'description': description,
      'enaSupport': enaSupport,
      'executableUsers': ?executableUsers,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAmiFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hypervisor': hypervisor,
      'id': id,
      'imageId': imageId,
      'imageLocation': imageLocation,
      'imageOwnerAlias': imageOwnerAlias,
      'imageType': imageType,
      'imdsSupport': imdsSupport,
      'includeDeprecated': ?includeDeprecated,
      'kernelId': kernelId,
      'lastLaunchedTime': lastLaunchedTime,
      'mostRecent': ?mostRecent,
      'name': name,
      'nameRegex': ?nameRegex,
      'ownerId': ownerId,
      'owners': ?owners,
      'platform': platform,
      'platformDetails': platformDetails,
      'productCodes': pulumi.Input.encodeList<GetAmiProductCode, Map<String, dynamic>>(productCodes, (value) => value.toMap()),
      'public': public,
      'ramdiskId': ramdiskId,
      'region': region,
      'rootDeviceName': rootDeviceName,
      'rootDeviceType': rootDeviceType,
      'rootSnapshotId': rootSnapshotId,
      'sriovNetSupport': sriovNetSupport,
      'state': state,
      'stateReason': stateReason,
      'tags': tags,
      'tpmSupport': tpmSupport,
      'uefiData': ?uefiData,
      'usageOperation': usageOperation,
      'virtualizationType': virtualizationType,
    };
  }

  factory GetAmiResult.fromMap(Map<String, dynamic> map) {
    return GetAmiResult(
      allowUnsafeFilter: (() { final guardedValue = map['allowUnsafeFilter']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      architecture: map['architecture'] as String,
      arn: map['arn'] as String,
      blockDeviceMappings: pulumi.Input.decodeList<GetAmiBlockDeviceMapping>(map['blockDeviceMappings']!, (value) => GetAmiBlockDeviceMapping.fromMap((value as Map).cast<String, dynamic>())),
      bootMode: map['bootMode'] as String,
      creationDate: map['creationDate'] as String,
      deprecationTime: map['deprecationTime'] as String,
      description: map['description'] as String,
      enaSupport: map['enaSupport'] as bool,
      executableUsers: (() { final guardedValue = map['executableUsers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAmiFilter>(guardedValue, (value) => GetAmiFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      hypervisor: map['hypervisor'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageLocation: map['imageLocation'] as String,
      imageOwnerAlias: map['imageOwnerAlias'] as String,
      imageType: map['imageType'] as String,
      imdsSupport: map['imdsSupport'] as String,
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kernelId: map['kernelId'] as String,
      lastLaunchedTime: map['lastLaunchedTime'] as String,
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: map['ownerId'] as String,
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      platform: map['platform'] as String,
      platformDetails: map['platformDetails'] as String,
      productCodes: pulumi.Input.decodeList<GetAmiProductCode>(map['productCodes']!, (value) => GetAmiProductCode.fromMap((value as Map).cast<String, dynamic>())),
      public: map['public'] as bool,
      ramdiskId: map['ramdiskId'] as String,
      region: map['region'] as String,
      rootDeviceName: map['rootDeviceName'] as String,
      rootDeviceType: map['rootDeviceType'] as String,
      rootSnapshotId: map['rootSnapshotId'] as String,
      sriovNetSupport: map['sriovNetSupport'] as String,
      state: map['state'] as String,
      stateReason: (map['stateReason'] as Map).cast<String, String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      tpmSupport: map['tpmSupport'] as String,
      uefiData: (() { final guardedValue = map['uefiData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usageOperation: map['usageOperation'] as String,
      virtualizationType: map['virtualizationType'] as String,
    );
  }
}
