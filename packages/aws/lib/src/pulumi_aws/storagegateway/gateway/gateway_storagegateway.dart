import 'package:pulumi/pulumi.dart' as pulumi;
import '../gateway_gateway_network_interface/gateway_gateway_network_interface.dart';
import '../gateway_maintenance_start_time/gateway_maintenance_start_time.dart';
import '../gateway_smb_active_directory_settings/gateway_smb_active_directory_settings.dart';
import 'gateway_storagegateway_args.dart';

/// Manages an AWS Storage Gateway file, tape, or volume gateway in the provider region.
///
/// > **NOTE:** The Storage Gateway API requires the gateway to be connected to properly return information after activation. If you are receiving `The specified gateway is not connected` errors during resource creation (gateway activation), ensure your gateway instance meets the [Storage Gateway requirements](https://docs.aws.amazon.com/storagegateway/latest/userguide/Requirements.html).
///
/// ## Example Usage
///
/// ### Local Cache
///
///
///
/// ### FSx File Gateway
///
///
///
/// ### S3 File Gateway
///
///
///
/// ### Tape Gateway
///
///
///
/// ### Volume Gateway (Cached)
///
///
///
/// ### Volume Gateway (Stored)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.Gateway` using the gateway Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/gateway:Gateway example arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678
/// ```
///
/// Certain resource arguments, like `gateway_ip_address` do not have a Storage Gateway API method for reading the information after creation, either omit the argument from the Pulumi program or use `ignore_changes` to hide the difference. For example:
class GatewayStoragegateway extends pulumi.CustomResource {
  /// Gateway activation key during resource creation. Conflicts with `gateway_ip_address`. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  late final pulumi.Output<String> activationKey;

  /// Amazon Resource Name (ARN) of the gateway.
  late final pulumi.Output<String> arn;

  /// The average download bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  late final pulumi.Output<int?> averageDownloadRateLimitInBitsPerSec;

  /// The average upload bandwidth rate limit in bits per second. This is supported for the `CACHED`, `STORED`, and `VTL` gateway types.
  late final pulumi.Output<int?> averageUploadRateLimitInBitsPerSec;

  /// The Amazon Resource Name (ARN) of the Amazon CloudWatch log group to use to monitor and log events in the gateway.
  late final pulumi.Output<String?> cloudwatchLogGroupArn;

  /// The ID of the Amazon EC2 instance that was used to launch the gateway.
  late final pulumi.Output<String> ec2InstanceId;

  /// The type of endpoint for your gateway.
  late final pulumi.Output<String> endpointType;

  /// Identifier of the gateway.
  late final pulumi.Output<String> gatewayId;

  /// Gateway IP address to retrieve activation key during resource creation. Conflicts with `activation_key`. Gateway must be accessible on port 80 from where this provider is running. Additional information is available in the [Storage Gateway User Guide](https://docs.aws.amazon.com/storagegateway/latest/userguide/get-activation-key.html).
  late final pulumi.Output<String> gatewayIpAddress;

  /// Name of the gateway.
  late final pulumi.Output<String> gatewayName;

  /// An array that contains descriptions of the gateway network interfaces. See Gateway Network Interface.
  late final pulumi.Output<List<GatewayGatewayNetworkInterface>>
      gatewayNetworkInterfaces;

  /// Time zone for the gateway. The time zone is of the format "GMT", "GMT-hr:mm", or "GMT+hr:mm". For example, `GMT-4:00` indicates the time is 4 hours behind GMT. The time zone is used, for example, for scheduling snapshots and your gateway's maintenance schedule.
  late final pulumi.Output<String> gatewayTimezone;

  /// Type of the gateway. The default value is `STORED`. Valid values: `CACHED`, `FILE_FSX_SMB`, `FILE_S3`, `STORED`, `VTL`.
  late final pulumi.Output<String?> gatewayType;

  /// VPC endpoint address to be used when activating your gateway. This should be used when your instance is in a private subnet. Requires HTTP access from client computer running this provider. More info on what ports are required by your VPC Endpoint Security group in [Activating a Gateway in a Virtual Private Cloud](https://docs.aws.amazon.com/storagegateway/latest/userguide/gateway-private-link.html).
  late final pulumi.Output<String?> gatewayVpcEndpoint;

  /// The type of hypervisor environment used by the host.
  late final pulumi.Output<String> hostEnvironment;

  /// The gateway's weekly maintenance start time information, including day and time of the week. The maintenance time is the time in your gateway's time zone. More details below.
  late final pulumi.Output<GatewayMaintenanceStartTime> maintenanceStartTime;

  /// Type of medium changer to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `STK-L700`, `AWS-Gateway-VTL`, `IBM-03584L32-0402`.
  late final pulumi.Output<String?> mediumChangerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Nested argument with Active Directory domain join information for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `ActiveDirectory` authentication SMB file shares. More details below.
  late final pulumi.Output<GatewaySmbActiveDirectorySettings?>
      smbActiveDirectorySettings;

  /// Specifies whether the shares on this gateway appear when listing shares.
  late final pulumi.Output<bool?> smbFileShareVisibility;

  /// Guest password for Server Message Block (SMB) file shares. Only valid for `FILE_S3` and `FILE_FSX_SMB` gateway types. Must be set before creating `GuestAccess` authentication SMB file shares. This provider can only detect drift of the existence of a guest password, not its actual value from the gateway. This provider can however update the password with changing the argument.
  late final pulumi.Output<String?> smbGuestPassword;

  /// Specifies the type of security strategy. Valid values are: `ClientSpecified`, `MandatorySigning`, and `MandatoryEncryption`. See [Setting a Security Level for Your Gateway](https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-gateway-file.html#security-strategy) for more information.
  late final pulumi.Output<String> smbSecurityStrategy;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** One of `activation_key` or `gateway_ip_address` must be provided for resource creation (gateway activation). Neither is required for resource import. If using `gateway_ip_address`, this provider must be able to make an HTTP (port 80) GET request to the specified IP address from where it is running.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Type of tape drive to use for tape gateway. This provider cannot detect drift of this argument. Valid values: `IBM-ULT3580-TD5`.
  late final pulumi.Output<String?> tapeDriveType;

  GatewayStoragegateway(
    String name, {
    GatewayStoragegatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/gateway:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationKey = registerOutput<String>('activationKey');
    this.arn = registerOutput<String>('arn');
    this.averageDownloadRateLimitInBitsPerSec =
        registerOutput<int?>('averageDownloadRateLimitInBitsPerSec');
    this.averageUploadRateLimitInBitsPerSec =
        registerOutput<int?>('averageUploadRateLimitInBitsPerSec');
    this.cloudwatchLogGroupArn =
        registerOutput<String?>('cloudwatchLogGroupArn');
    this.ec2InstanceId = registerOutput<String>('ec2InstanceId');
    this.endpointType = registerOutput<String>('endpointType');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.gatewayIpAddress = registerOutput<String>('gatewayIpAddress');
    this.gatewayName = registerOutput<String>('gatewayName');
    this.gatewayNetworkInterfaces =
        registerOutput<List<GatewayGatewayNetworkInterface>>(
            'gatewayNetworkInterfaces');
    this.gatewayTimezone = registerOutput<String>('gatewayTimezone');
    this.gatewayType = registerOutput<String?>('gatewayType');
    this.gatewayVpcEndpoint = registerOutput<String?>('gatewayVpcEndpoint');
    this.hostEnvironment = registerOutput<String>('hostEnvironment');
    this.maintenanceStartTime =
        registerOutput<GatewayMaintenanceStartTime>('maintenanceStartTime');
    this.mediumChangerType = registerOutput<String?>('mediumChangerType');
    this.region = registerOutput<String>('region');
    this.smbActiveDirectorySettings =
        registerOutput<GatewaySmbActiveDirectorySettings?>(
            'smbActiveDirectorySettings');
    this.smbFileShareVisibility =
        registerOutput<bool?>('smbFileShareVisibility');
    this.smbGuestPassword = registerOutput<String?>('smbGuestPassword');
    this.smbSecurityStrategy = registerOutput<String>('smbSecurityStrategy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tapeDriveType = registerOutput<String?>('tapeDriveType');
  }
}
