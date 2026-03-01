// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_maintenance_start_time.dart';
import 'gateway_smb_active_directory_settings.dart';

/// {@template pulumi_storagegateway_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_gateway_gateway_args_doc}
class GatewayArgs {
  /// Gateway activation key during resource creation. Conflicts with `gateway_ip_address`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final pulumi.Input<String>? activationKey;
  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final pulumi.Input<int>? averageDownloadRateLimitInBitsPerSec;
  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final pulumi.Input<int>? averageUploadRateLimitInBitsPerSec;
  /// The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  final pulumi.Input<String>? cloudwatchLogGroupArn;
  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final pulumi.Input<String>? gatewayIpAddress;
  /// Name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  final pulumi.Input<String> gatewayTimezone;
  /// Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  final pulumi.Input<String>? gatewayType;
  /// VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  final pulumi.Input<String>? gatewayVpcEndpoint;
  /// The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  final pulumi.Input<GatewayMaintenanceStartTime>? maintenanceStartTime;
  /// Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  final pulumi.Input<String>? mediumChangerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  final pulumi.Input<GatewaySmbActiveDirectorySettings>? smbActiveDirectorySettings;
  /// Specifies whether the shares on this gateway appear when listing shares.
  final pulumi.Input<bool>? smbFileShareVisibility;
  /// Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  final pulumi.Input<String>? smbGuestPassword;
  /// Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  final pulumi.Input<String>? smbSecurityStrategy;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** One of `activation_key` or `gateway_ip_address` must be provided for resource creation (gateway activation). Neither is required for resource import. If using `gateway_ip_address`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  final pulumi.Input<String>? tapeDriveType;

  /// Creates a new [GatewayArgs].
  /// [activationKey] Gateway activation key during resource creation. Conflicts with `gateway_ip_address`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  /// [averageDownloadRateLimitInBitsPerSec] The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  /// [averageUploadRateLimitInBitsPerSec] The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  /// [cloudwatchLogGroupArn] The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  /// [gatewayIpAddress] Gateway IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  /// [gatewayName] Name of the gateway.
  /// [gatewayTimezone] Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  /// [gatewayType] Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  /// [gatewayVpcEndpoint] VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  /// [maintenanceStartTime] The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  /// [mediumChangerType] Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [smbActiveDirectorySettings] Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  /// [smbFileShareVisibility] Specifies whether the shares on this gateway appear when listing shares.
  /// [smbGuestPassword] Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  /// [smbSecurityStrategy] Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tapeDriveType] Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  GatewayArgs({
    pulumi.Output<String>? activationKey,
    pulumi.Output<int>? averageDownloadRateLimitInBitsPerSec,
    pulumi.Output<int>? averageUploadRateLimitInBitsPerSec,
    pulumi.Output<String>? cloudwatchLogGroupArn,
    pulumi.Output<String>? gatewayIpAddress,
    required pulumi.Output<String> gatewayName,
    required pulumi.Output<String> gatewayTimezone,
    pulumi.Output<String>? gatewayType,
    pulumi.Output<String>? gatewayVpcEndpoint,
    pulumi.Output<GatewayMaintenanceStartTime>? maintenanceStartTime,
    pulumi.Output<String>? mediumChangerType,
    pulumi.Output<String>? region,
    pulumi.Output<GatewaySmbActiveDirectorySettings>? smbActiveDirectorySettings,
    pulumi.Output<bool>? smbFileShareVisibility,
    pulumi.Output<String>? smbGuestPassword,
    pulumi.Output<String>? smbSecurityStrategy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tapeDriveType,
  }) :
      activationKey = pulumi.Input.asOptionalInput<String>(activationKey),
      averageDownloadRateLimitInBitsPerSec = pulumi.Input.asOptionalInput<int>(averageDownloadRateLimitInBitsPerSec),
      averageUploadRateLimitInBitsPerSec = pulumi.Input.asOptionalInput<int>(averageUploadRateLimitInBitsPerSec),
      cloudwatchLogGroupArn = pulumi.Input.asOptionalInput<String>(cloudwatchLogGroupArn),
      gatewayIpAddress = pulumi.Input.asOptionalInput<String>(gatewayIpAddress),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      gatewayTimezone = pulumi.Input.asInput<String>(gatewayTimezone),
      gatewayType = pulumi.Input.asOptionalInput<String>(gatewayType),
      gatewayVpcEndpoint = pulumi.Input.asOptionalInput<String>(gatewayVpcEndpoint),
      maintenanceStartTime = pulumi.Input.asOptionalInput<GatewayMaintenanceStartTime>(maintenanceStartTime),
      mediumChangerType = pulumi.Input.asOptionalInput<String>(mediumChangerType),
      region = pulumi.Input.asOptionalInput<String>(region),
      smbActiveDirectorySettings = pulumi.Input.asOptionalInput<GatewaySmbActiveDirectorySettings>(smbActiveDirectorySettings),
      smbFileShareVisibility = pulumi.Input.asOptionalInput<bool>(smbFileShareVisibility),
      smbGuestPassword = pulumi.Input.asOptionalInput<String>(smbGuestPassword),
      smbSecurityStrategy = pulumi.Input.asOptionalInput<String>(smbSecurityStrategy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tapeDriveType = pulumi.Input.asOptionalInput<String>(tapeDriveType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationKey': ?activationKey,
      'averageDownloadRateLimitInBitsPerSec': ?averageDownloadRateLimitInBitsPerSec,
      'averageUploadRateLimitInBitsPerSec': ?averageUploadRateLimitInBitsPerSec,
      'cloudwatchLogGroupArn': ?cloudwatchLogGroupArn,
      'gatewayIpAddress': ?gatewayIpAddress,
      'gatewayName': gatewayName,
      'gatewayTimezone': gatewayTimezone,
      'gatewayType': ?gatewayType,
      'gatewayVpcEndpoint': ?gatewayVpcEndpoint,
      'maintenanceStartTime': ?pulumi.Input.mapOptionalInputValue<GatewayMaintenanceStartTime, Map<String, dynamic>>(maintenanceStartTime, (value) => value.toMap()),
      'mediumChangerType': ?mediumChangerType,
      'region': ?region,
      'smbActiveDirectorySettings': ?pulumi.Input.mapOptionalInputValue<GatewaySmbActiveDirectorySettings, Map<String, dynamic>>(smbActiveDirectorySettings, (value) => value.toMap()),
      'smbFileShareVisibility': ?smbFileShareVisibility,
      'smbGuestPassword': ?smbGuestPassword,
      'smbSecurityStrategy': ?smbSecurityStrategy,
      'tags': ?tags,
      'tapeDriveType': ?tapeDriveType,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      activationKey: map['activationKey'] == null ? null : pulumi.Output.create<String>(map['activationKey'] as String),
      averageDownloadRateLimitInBitsPerSec: map['averageDownloadRateLimitInBitsPerSec'] == null ? null : pulumi.Output.create<int>(map['averageDownloadRateLimitInBitsPerSec'] as int),
      averageUploadRateLimitInBitsPerSec: map['averageUploadRateLimitInBitsPerSec'] == null ? null : pulumi.Output.create<int>(map['averageUploadRateLimitInBitsPerSec'] as int),
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] == null ? null : pulumi.Output.create<String>(map['cloudwatchLogGroupArn'] as String),
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : pulumi.Output.create<String>(map['gatewayIpAddress'] as String),
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      gatewayTimezone: pulumi.Output.create<String>(map['gatewayTimezone'] as String),
      gatewayType: map['gatewayType'] == null ? null : pulumi.Output.create<String>(map['gatewayType'] as String),
      gatewayVpcEndpoint: map['gatewayVpcEndpoint'] == null ? null : pulumi.Output.create<String>(map['gatewayVpcEndpoint'] as String),
      maintenanceStartTime: map['maintenanceStartTime'] == null ? null : pulumi.Output.create<GatewayMaintenanceStartTime>(GatewayMaintenanceStartTime.fromMap((map['maintenanceStartTime'] as Map).cast<String, dynamic>())),
      mediumChangerType: map['mediumChangerType'] == null ? null : pulumi.Output.create<String>(map['mediumChangerType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      smbActiveDirectorySettings: map['smbActiveDirectorySettings'] == null ? null : pulumi.Output.create<GatewaySmbActiveDirectorySettings>(GatewaySmbActiveDirectorySettings.fromMap((map['smbActiveDirectorySettings'] as Map).cast<String, dynamic>())),
      smbFileShareVisibility: map['smbFileShareVisibility'] == null ? null : pulumi.Output.create<bool>(map['smbFileShareVisibility'] as bool),
      smbGuestPassword: map['smbGuestPassword'] == null ? null : pulumi.Output.create<String>(map['smbGuestPassword'] as String),
      smbSecurityStrategy: map['smbSecurityStrategy'] == null ? null : pulumi.Output.create<String>(map['smbSecurityStrategy'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tapeDriveType: map['tapeDriveType'] == null ? null : pulumi.Output.create<String>(map['tapeDriveType'] as String),
    );
  }
}

