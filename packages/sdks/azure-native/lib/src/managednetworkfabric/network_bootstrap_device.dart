import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'network_bootstrap_device_args.dart';
import 'system_data_response.dart';

/// The Network Bootstrap Device resource definition.
///
/// Uses Azure REST API version 2025-07-15.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:managednetworkfabric:NetworkBootstrapDevice example-device /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/networkBootstrapDevices/{networkBootstrapDeviceName}
/// ```
class NetworkBootstrapDevice extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// Dhcp server IPv4 Address.
  late final pulumi.Output<String> dhcpV4ServerIpAddress;
  /// The host name of the device.
  late final pulumi.Output<String?> hostName;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network Bootstrap Device SKU name.
  late final pulumi.Output<String?> networkDeviceSku;
  /// Associated Network Fabric Resource ID
  late final pulumi.Output<String> networkFabricId;
  /// Primary Management IPv4 Address.
  late final pulumi.Output<String> primaryManagementIpv4Address;
  /// Primary Management IPv6 Address.
  late final pulumi.Output<String> primaryManagementIpv6Address;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Secondary Management IPv4 Address.
  late final pulumi.Output<String> secondaryManagementIpv4Address;
  /// Secondary Management IPv6 Address.
  late final pulumi.Output<String> secondaryManagementIpv6Address;
  /// Serial number of the device. Format of serial Number - Make;Model;HardwareRevisionId;SerialNumber.
  late final pulumi.Output<String?> serialNumber;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Current version of the device as defined in SKU.
  late final pulumi.Output<String> version;

  /// Creates a new [NetworkBootstrapDevice].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkBootstrapDevice]. {@macro pulumi_managednetworkfabric_network_bootstrap_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkBootstrapDevice(
    String name, {
    NetworkBootstrapDeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:NetworkBootstrapDevice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeState = registerOutput<String>('administrativeState');
    annotation = registerOutput<String?>('annotation');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configurationState = registerOutput<String>('configurationState');
    dhcpV4ServerIpAddress = registerOutput<String>('dhcpV4ServerIpAddress');
    hostName = registerOutput<String?>('hostName');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkDeviceSku = registerOutput<String?>('networkDeviceSku');
    networkFabricId = registerOutput<String>('networkFabricId');
    primaryManagementIpv4Address = registerOutput<String>('primaryManagementIpv4Address');
    primaryManagementIpv6Address = registerOutput<String>('primaryManagementIpv6Address');
    provisioningState = registerOutput<String>('provisioningState');
    secondaryManagementIpv4Address = registerOutput<String>('secondaryManagementIpv4Address');
    secondaryManagementIpv6Address = registerOutput<String>('secondaryManagementIpv6Address');
    serialNumber = registerOutput<String?>('serialNumber');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
