// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_gateway_network_interface.dart';
import 'gateway_maintenance_start_time.dart';
import 'gateway_smb_active_directory_settings.dart';

/// Input properties used for looking up and filtering Gateway resources.
class GatewayState {
  /// Gateway activation key during resource creation. Conflicts with `gateway_ip_address`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final pulumi.Input<String>? activationKey;
  /// Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String>? arn;
  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final pulumi.Input<int>? averageDownloadRateLimitInBitsPerSec;
  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  final pulumi.Input<int>? averageUploadRateLimitInBitsPerSec;
  /// The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  final pulumi.Input<String>? cloudwatchLogGroupArn;
  /// The ID of the Amazon EC2 instance that was used to launch the gateway.
  final pulumi.Input<String>? ec2InstanceId;
  /// The type of endpoint for your gateway.
  final pulumi.Input<String>? endpointType;
  /// Identifier of the gateway.
  final pulumi.Input<String>? gatewayId;
  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  final pulumi.Input<String>? gatewayIpAddress;
  /// Name of the gateway.
  final pulumi.Input<String>? gatewayName;
  /// An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface.
  final pulumi.Input<List<GatewayGatewayNetworkInterface>>? gatewayNetworkInterfaces;
  /// Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  final pulumi.Input<String>? gatewayTimezone;
  /// Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  final pulumi.Input<String>? gatewayType;
  /// VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  final pulumi.Input<String>? gatewayVpcEndpoint;
  /// The type of hypervisor environment used by the host.
  final pulumi.Input<String>? hostEnvironment;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  final pulumi.Input<String>? tapeDriveType;

  /// Creates a new [GatewayState].
  /// [activationKey] Gateway activation key during resource creation. Conflicts with `gateway_ip_address`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  /// [arn] Amazon Resource Name (ARN) of the gateway.
  /// [averageDownloadRateLimitInBitsPerSec] The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  /// [averageUploadRateLimitInBitsPerSec] The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  /// [cloudwatchLogGroupArn] The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  /// [ec2InstanceId] The ID of the Amazon EC2 instance that was used to launch the gateway.
  /// [endpointType] The type of endpoint for your gateway.
  /// [gatewayId] Identifier of the gateway.
  /// [gatewayIpAddress] Gateway IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  /// [gatewayName] Name of the gateway.
  /// [gatewayNetworkInterfaces] An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface.
  /// [gatewayTimezone] Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  /// [gatewayType] Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  /// [gatewayVpcEndpoint] VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  /// [hostEnvironment] The type of hypervisor environment used by the host.
  /// [maintenanceStartTime] The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  /// [mediumChangerType] Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [smbActiveDirectorySettings] Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  /// [smbFileShareVisibility] Specifies whether the shares on this gateway appear when listing shares.
  /// [smbGuestPassword] Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  /// [smbSecurityStrategy] Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tapeDriveType] Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  GatewayState({
    this.activationKey,
    this.arn,
    this.averageDownloadRateLimitInBitsPerSec,
    this.averageUploadRateLimitInBitsPerSec,
    this.cloudwatchLogGroupArn,
    this.ec2InstanceId,
    this.endpointType,
    this.gatewayId,
    this.gatewayIpAddress,
    this.gatewayName,
    this.gatewayNetworkInterfaces,
    this.gatewayTimezone,
    this.gatewayType,
    this.gatewayVpcEndpoint,
    this.hostEnvironment,
    this.maintenanceStartTime,
    this.mediumChangerType,
    this.region,
    this.smbActiveDirectorySettings,
    this.smbFileShareVisibility,
    this.smbGuestPassword,
    this.smbSecurityStrategy,
    this.tags,
    this.tagsAll,
    this.tapeDriveType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationKey': ?activationKey,
      'arn': ?arn,
      'averageDownloadRateLimitInBitsPerSec': ?averageDownloadRateLimitInBitsPerSec,
      'averageUploadRateLimitInBitsPerSec': ?averageUploadRateLimitInBitsPerSec,
      'cloudwatchLogGroupArn': ?cloudwatchLogGroupArn,
      'ec2InstanceId': ?ec2InstanceId,
      'endpointType': ?endpointType,
      'gatewayId': ?gatewayId,
      'gatewayIpAddress': ?gatewayIpAddress,
      'gatewayName': ?gatewayName,
      'gatewayNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<GatewayGatewayNetworkInterface>, List<Map<String, dynamic>>>(gatewayNetworkInterfaces, (value) => pulumi.Input.encodeList<GatewayGatewayNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayTimezone': ?gatewayTimezone,
      'gatewayType': ?gatewayType,
      'gatewayVpcEndpoint': ?gatewayVpcEndpoint,
      'hostEnvironment': ?hostEnvironment,
      'maintenanceStartTime': ?pulumi.Input.mapOptionalInputValue<GatewayMaintenanceStartTime, Map<String, dynamic>>(maintenanceStartTime, (value) => value.toMap()),
      'mediumChangerType': ?mediumChangerType,
      'region': ?region,
      'smbActiveDirectorySettings': ?pulumi.Input.mapOptionalInputValue<GatewaySmbActiveDirectorySettings, Map<String, dynamic>>(smbActiveDirectorySettings, (value) => value.toMap()),
      'smbFileShareVisibility': ?smbFileShareVisibility,
      'smbGuestPassword': ?smbGuestPassword,
      'smbSecurityStrategy': ?smbSecurityStrategy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tapeDriveType': ?tapeDriveType,
    };
  }

  factory GatewayState.fromMap(Map<String, dynamic> map) {
    return GatewayState(
      activationKey: map['activationKey'] == null ? null : (map['activationKey'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      averageDownloadRateLimitInBitsPerSec: map['averageDownloadRateLimitInBitsPerSec'] == null ? null : (map['averageDownloadRateLimitInBitsPerSec'] as int).input(),
      averageUploadRateLimitInBitsPerSec: map['averageUploadRateLimitInBitsPerSec'] == null ? null : (map['averageUploadRateLimitInBitsPerSec'] as int).input(),
      cloudwatchLogGroupArn: map['cloudwatchLogGroupArn'] == null ? null : (map['cloudwatchLogGroupArn'] as String).input(),
      ec2InstanceId: map['ec2InstanceId'] == null ? null : (map['ec2InstanceId'] as String).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      gatewayIpAddress: map['gatewayIpAddress'] == null ? null : (map['gatewayIpAddress'] as String).input(),
      gatewayName: map['gatewayName'] == null ? null : (map['gatewayName'] as String).input(),
      gatewayNetworkInterfaces: map['gatewayNetworkInterfaces'] == null ? null : (pulumi.Input.decodeList<GatewayGatewayNetworkInterface>(map['gatewayNetworkInterfaces'], (value) => GatewayGatewayNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayTimezone: map['gatewayTimezone'] == null ? null : (map['gatewayTimezone'] as String).input(),
      gatewayType: map['gatewayType'] == null ? null : (map['gatewayType'] as String).input(),
      gatewayVpcEndpoint: map['gatewayVpcEndpoint'] == null ? null : (map['gatewayVpcEndpoint'] as String).input(),
      hostEnvironment: map['hostEnvironment'] == null ? null : (map['hostEnvironment'] as String).input(),
      maintenanceStartTime: map['maintenanceStartTime'] == null ? null : (GatewayMaintenanceStartTime.fromMap((map['maintenanceStartTime'] as Map).cast<String, dynamic>())).input(),
      mediumChangerType: map['mediumChangerType'] == null ? null : (map['mediumChangerType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      smbActiveDirectorySettings: map['smbActiveDirectorySettings'] == null ? null : (GatewaySmbActiveDirectorySettings.fromMap((map['smbActiveDirectorySettings'] as Map).cast<String, dynamic>())).input(),
      smbFileShareVisibility: map['smbFileShareVisibility'] == null ? null : (map['smbFileShareVisibility'] as bool).input(),
      smbGuestPassword: map['smbGuestPassword'] == null ? null : (map['smbGuestPassword'] as String).input(),
      smbSecurityStrategy: map['smbSecurityStrategy'] == null ? null : (map['smbSecurityStrategy'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      tapeDriveType: map['tapeDriveType'] == null ? null : (map['tapeDriveType'] as String).input(),
    );
  }
}

