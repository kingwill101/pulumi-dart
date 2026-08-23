// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_maintenance_start_time.dart';
import 'gateway_smb_active_directory_settings.dart';

/// {@template pulumi_storagegateway_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_gateway_gateway_args_doc}
class GatewayArgs {
  /// Gateway activation key during resource creation. Conflicts with `gatewayIpAddress`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final pulumi.Input<String>? activationKey;
  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final pulumi.Input<int>? averageDownloadRateLimitInBitsPerSec;
  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final pulumi.Input<int>? averageUploadRateLimitInBitsPerSec;
  /// The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  final pulumi.Input<String>? cloudwatchLogGroupArn;
  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with `activationKey`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **NOTE:** One of `activationKey` or `gatewayIpAddress` must be provided for resource creation (gateway activation). Neither is required for resource import. If using `gatewayIpAddress`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running.
  final pulumi.Input<Map<String, String>>? tags;
  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  final pulumi.Input<String>? tapeDriveType;

  /// Creates a new [GatewayArgs].
  /// [activationKey] Gateway activation key during resource creation. Conflicts with `gatewayIpAddress`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  /// [averageDownloadRateLimitInBitsPerSec] The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  /// [averageUploadRateLimitInBitsPerSec] The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  /// [cloudwatchLogGroupArn] The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  /// [gatewayIpAddress] Gateway IP address to retrieve activation key during resource creation. Conflicts with `activationKey`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
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
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tapeDriveType] Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  const GatewayArgs({
    this.activationKey,
    this.averageDownloadRateLimitInBitsPerSec,
    this.averageUploadRateLimitInBitsPerSec,
    this.cloudwatchLogGroupArn,
    this.gatewayIpAddress,
    required this.gatewayName,
    required this.gatewayTimezone,
    this.gatewayType,
    this.gatewayVpcEndpoint,
    this.maintenanceStartTime,
    this.mediumChangerType,
    this.region,
    this.smbActiveDirectorySettings,
    this.smbFileShareVisibility,
    this.smbGuestPassword,
    this.smbSecurityStrategy,
    this.tags,
    this.tapeDriveType,
  });

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
      activationKey: (() { final guardedValue = map['activationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      averageDownloadRateLimitInBitsPerSec: (() { final guardedValue = map['averageDownloadRateLimitInBitsPerSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      averageUploadRateLimitInBitsPerSec: (() { final guardedValue = map['averageUploadRateLimitInBitsPerSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cloudwatchLogGroupArn: (() { final guardedValue = map['cloudwatchLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayIpAddress: (() { final guardedValue = map['gatewayIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
      gatewayTimezone: pulumi.Input.fromValue(map['gatewayTimezone'] as String),
      gatewayType: (() { final guardedValue = map['gatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayVpcEndpoint: (() { final guardedValue = map['gatewayVpcEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceStartTime: (() { final guardedValue = map['maintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayMaintenanceStartTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mediumChangerType: (() { final guardedValue = map['mediumChangerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbActiveDirectorySettings: (() { final guardedValue = map['smbActiveDirectorySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewaySmbActiveDirectorySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smbFileShareVisibility: (() { final guardedValue = map['smbFileShareVisibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      smbGuestPassword: (() { final guardedValue = map['smbGuestPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smbSecurityStrategy: (() { final guardedValue = map['smbSecurityStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tapeDriveType: (() { final guardedValue = map['tapeDriveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
