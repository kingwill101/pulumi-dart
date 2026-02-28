import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_args.dart';
import 'google_apps_cloudidentity_devices_v1_android_attributes_response.dart';

/// Creates a device. Only company-owned device may be created. **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
/// Auto-naming is currently not supported for this resource.
class Device extends pulumi.CustomResource {
  /// Attributes specific to Android devices.
  late final pulumi
      .Output<GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse>
      androidSpecificAttributes;

  /// Asset tag of the device.
  late final pulumi.Output<String> assetTag;

  /// Baseband version of the device.
  late final pulumi.Output<String> basebandVersion;

  /// Device bootloader version. Example: 0.6.7.
  late final pulumi.Output<String> bootloaderVersion;

  /// Device brand. Example: Samsung.
  late final pulumi.Output<String> brand;

  /// Build number of the device.
  late final pulumi.Output<String> buildNumber;

  /// Represents whether the Device is compromised.
  late final pulumi.Output<String> compromisedState;

  /// When the Company-Owned device was imported. This field is empty for BYOD devices.
  late final pulumi.Output<String> createTime;

  /// Optional. [Resource name](https://cloud.google.com/apis/design/resource_names) of the customer. If you're using this API for your own organization, use `customers/my_customer` If you're using this API to manage another organization, use `customers/{customer}`, where customer is the customer to whom the device belongs.
  late final pulumi.Output<String?> customer;

  /// Unique identifier for the device.
  late final pulumi.Output<String> deviceId;

  /// Type of device.
  late final pulumi.Output<String> deviceType;

  /// Whether developer options is enabled on device.
  late final pulumi.Output<bool> enabledDeveloperOptions;

  /// Whether USB debugging is enabled on device.
  late final pulumi.Output<bool> enabledUsbDebugging;

  /// Device encryption state.
  late final pulumi.Output<String> encryptionState;

  /// Host name of the device.
  late final pulumi.Output<String> hostname;

  /// IMEI number of device if GSM device; empty otherwise.
  late final pulumi.Output<String> imei;

  /// Kernel version of the device.
  late final pulumi.Output<String> kernelVersion;

  /// Most recent time when device synced with this service.
  late final pulumi.Output<String> lastSyncTime;

  /// Management state of the device
  late final pulumi.Output<String> managementState;

  /// Device manufacturer. Example: Motorola.
  late final pulumi.Output<String> manufacturer;

  /// MEID number of device if CDMA device; empty otherwise.
  late final pulumi.Output<String> meid;

  /// Model name of device. Example: Pixel 3.
  late final pulumi.Output<String> model;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device}`, where device is the unique id assigned to the Device.
  late final pulumi.Output<String> name;

  /// Mobile or network operator of device, if available.
  late final pulumi.Output<String> networkOperator;

  /// OS version of the device. Example: Android 8.1.0.
  late final pulumi.Output<String> osVersion;

  /// Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  late final pulumi.Output<List<String>> otherAccounts;

  /// Whether the device is owned by the company or an individual
  late final pulumi.Output<String> ownerType;

  /// OS release version. Example: 6.0.
  late final pulumi.Output<String> releaseVersion;

  /// OS security patch update time on device.
  late final pulumi.Output<String> securityPatchTime;

  /// Serial Number of device. Example: HT82V1A01076.
  late final pulumi.Output<String> serialNumber;

  /// WiFi MAC addresses of device.
  late final pulumi.Output<List<String>> wifiMacAddresses;

  /// Creates a new [Device].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Device]. {@macro pulumi_cloudidentity_v1_device_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Device(
    String name, {
    DeviceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1:Device',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.androidSpecificAttributes = registerOutput<
            GoogleAppsCloudidentityDevicesV1AndroidAttributesResponse>(
        'androidSpecificAttributes');
    this.assetTag = registerOutput<String>('assetTag');
    this.basebandVersion = registerOutput<String>('basebandVersion');
    this.bootloaderVersion = registerOutput<String>('bootloaderVersion');
    this.brand = registerOutput<String>('brand');
    this.buildNumber = registerOutput<String>('buildNumber');
    this.compromisedState = registerOutput<String>('compromisedState');
    this.createTime = registerOutput<String>('createTime');
    this.customer = registerOutput<String?>('customer');
    this.deviceId = registerOutput<String>('deviceId');
    this.deviceType = registerOutput<String>('deviceType');
    this.enabledDeveloperOptions =
        registerOutput<bool>('enabledDeveloperOptions');
    this.enabledUsbDebugging = registerOutput<bool>('enabledUsbDebugging');
    this.encryptionState = registerOutput<String>('encryptionState');
    this.hostname = registerOutput<String>('hostname');
    this.imei = registerOutput<String>('imei');
    this.kernelVersion = registerOutput<String>('kernelVersion');
    this.lastSyncTime = registerOutput<String>('lastSyncTime');
    this.managementState = registerOutput<String>('managementState');
    this.manufacturer = registerOutput<String>('manufacturer');
    this.meid = registerOutput<String>('meid');
    this.model = registerOutput<String>('model');
    this.name = registerOutput<String>('name');
    this.networkOperator = registerOutput<String>('networkOperator');
    this.osVersion = registerOutput<String>('osVersion');
    this.otherAccounts = registerOutput<List<String>>('otherAccounts');
    this.ownerType = registerOutput<String>('ownerType');
    this.releaseVersion = registerOutput<String>('releaseVersion');
    this.securityPatchTime = registerOutput<String>('securityPatchTime');
    this.serialNumber = registerOutput<String>('serialNumber');
    this.wifiMacAddresses = registerOutput<List<String>>('wifiMacAddresses');
  }
}
