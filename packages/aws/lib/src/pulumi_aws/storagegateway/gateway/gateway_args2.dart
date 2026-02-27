// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gateway_maintenance_start_time/gateway_maintenance_start_time.dart';
import '../gateway_smb_active_directory_settings/gateway_smb_active_directory_settings.dart';

/// The set of arguments for Gateway.
class GatewayArgs2 {
  /// Gateway activation key during resource creation. Conflicts with `gateway_ip_address`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final Input<String>? activationKey;

  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final Input<int>? averageDownloadRateLimitInBitsPerSec;

  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final Input<int>? averageUploadRateLimitInBitsPerSec;

  /// The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  final Input<String>? cloudwatchLogGroupArn;

  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final Input<String>? gatewayIpAddress;

  /// Name of the gateway.
  final Input<String> gatewayName;

  /// Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  final Input<String> gatewayTimezone;

  /// Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  final Input<String>? gatewayType;

  /// VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  final Input<String>? gatewayVpcEndpoint;

  /// The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  final Input<GatewayMaintenanceStartTime>? maintenanceStartTime;

  /// Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  final Input<String>? mediumChangerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  final Input<GatewaySmbActiveDirectorySettings>? smbActiveDirectorySettings;

  /// Specifies whether the shares on this gateway appear when listing shares.
  final Input<bool>? smbFileShareVisibility;

  /// Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  final Input<String>? smbGuestPassword;

  /// Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  final Input<String>? smbSecurityStrategy;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** One of `activation_key` or `gateway_ip_address` must be provided for resource creation (gateway activation). Neither is required for resource import. If using `gateway_ip_address`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running.
  final Input<Map<String, String>>? tags;

  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  final Input<String>? tapeDriveType;

  GatewayArgs2({
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
    final map = <String, dynamic>{};
    final activationKeyValue = activationKey;
    if (activationKeyValue != null) {
      map['activationKey'] = activationKeyValue;
    }
    final averageDownloadRateLimitInBitsPerSecValue =
        averageDownloadRateLimitInBitsPerSec;
    if (averageDownloadRateLimitInBitsPerSecValue != null) {
      map['averageDownloadRateLimitInBitsPerSec'] =
          averageDownloadRateLimitInBitsPerSecValue;
    }
    final averageUploadRateLimitInBitsPerSecValue =
        averageUploadRateLimitInBitsPerSec;
    if (averageUploadRateLimitInBitsPerSecValue != null) {
      map['averageUploadRateLimitInBitsPerSec'] =
          averageUploadRateLimitInBitsPerSecValue;
    }
    final cloudwatchLogGroupArnValue = cloudwatchLogGroupArn;
    if (cloudwatchLogGroupArnValue != null) {
      map['cloudwatchLogGroupArn'] = cloudwatchLogGroupArnValue;
    }
    final gatewayIpAddressValue = gatewayIpAddress;
    if (gatewayIpAddressValue != null) {
      map['gatewayIpAddress'] = gatewayIpAddressValue;
    }
    map['gatewayName'] = gatewayName;
    map['gatewayTimezone'] = gatewayTimezone;
    final gatewayTypeValue = gatewayType;
    if (gatewayTypeValue != null) {
      map['gatewayType'] = gatewayTypeValue;
    }
    final gatewayVpcEndpointValue = gatewayVpcEndpoint;
    if (gatewayVpcEndpointValue != null) {
      map['gatewayVpcEndpoint'] = gatewayVpcEndpointValue;
    }
    final maintenanceStartTimeValue = maintenanceStartTime;
    if (maintenanceStartTimeValue != null) {
      map['maintenanceStartTime'] = Input.mapOptionalInputValue<
              GatewayMaintenanceStartTime, Map<String, dynamic>>(
          maintenanceStartTimeValue, (value) => value.toMap());
    }
    final mediumChangerTypeValue = mediumChangerType;
    if (mediumChangerTypeValue != null) {
      map['mediumChangerType'] = mediumChangerTypeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final smbActiveDirectorySettingsValue = smbActiveDirectorySettings;
    if (smbActiveDirectorySettingsValue != null) {
      map['smbActiveDirectorySettings'] = Input.mapOptionalInputValue<
              GatewaySmbActiveDirectorySettings, Map<String, dynamic>>(
          smbActiveDirectorySettingsValue, (value) => value.toMap());
    }
    final smbFileShareVisibilityValue = smbFileShareVisibility;
    if (smbFileShareVisibilityValue != null) {
      map['smbFileShareVisibility'] = smbFileShareVisibilityValue;
    }
    final smbGuestPasswordValue = smbGuestPassword;
    if (smbGuestPasswordValue != null) {
      map['smbGuestPassword'] = smbGuestPasswordValue;
    }
    final smbSecurityStrategyValue = smbSecurityStrategy;
    if (smbSecurityStrategyValue != null) {
      map['smbSecurityStrategy'] = smbSecurityStrategyValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tapeDriveTypeValue = tapeDriveType;
    if (tapeDriveTypeValue != null) {
      map['tapeDriveType'] = tapeDriveTypeValue;
    }
    return map;
  }

  factory GatewayArgs2.fromMap(Map<String, dynamic> map) {
    return GatewayArgs2(
      activationKey: Input.asOptionalInput<String>(map['activationKey']),
      averageDownloadRateLimitInBitsPerSec: Input.asOptionalInput<int>(
          map['averageDownloadRateLimitInBitsPerSec']),
      averageUploadRateLimitInBitsPerSec:
          Input.asOptionalInput<int>(map['averageUploadRateLimitInBitsPerSec']),
      cloudwatchLogGroupArn:
          Input.asOptionalInput<String>(map['cloudwatchLogGroupArn']),
      gatewayIpAddress: Input.asOptionalInput<String>(map['gatewayIpAddress']),
      gatewayName: Input.asInput<String>(map['gatewayName']),
      gatewayTimezone: Input.asInput<String>(map['gatewayTimezone']),
      gatewayType: Input.asOptionalInput<String>(map['gatewayType']),
      gatewayVpcEndpoint:
          Input.asOptionalInput<String>(map['gatewayVpcEndpoint']),
      maintenanceStartTime: Input.asOptionalInput<GatewayMaintenanceStartTime>(
          map['maintenanceStartTime']),
      mediumChangerType:
          Input.asOptionalInput<String>(map['mediumChangerType']),
      region: Input.asOptionalInput<String>(map['region']),
      smbActiveDirectorySettings:
          Input.asOptionalInput<GatewaySmbActiveDirectorySettings>(
              map['smbActiveDirectorySettings']),
      smbFileShareVisibility:
          Input.asOptionalInput<bool>(map['smbFileShareVisibility']),
      smbGuestPassword: Input.asOptionalInput<String>(map['smbGuestPassword']),
      smbSecurityStrategy:
          Input.asOptionalInput<String>(map['smbSecurityStrategy']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tapeDriveType: Input.asOptionalInput<String>(map['tapeDriveType']),
    );
  }
}
