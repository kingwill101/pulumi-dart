import 'package:pulumi/pulumi.dart';
import 'android_attributes_response.dart';
import 'device_args2.dart';
import 'endpoint_verification_specific_attributes_response.dart';

/// Creates a device. Only company-owned device may be created. **Note**: This method is available only to customers who have one of the following SKUs: Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity Premium
/// Auto-naming is currently not supported for this resource.
class Device2 extends CustomResource {
  /// Attributes specific to Android devices.
  late final Output<AndroidAttributesResponse> androidSpecificAttributes;

  /// Asset tag of the device.
  late final Output<String> assetTag;

  /// Baseband version of the device.
  late final Output<String> basebandVersion;

  /// Device bootloader version. Example: 0.6.7.
  late final Output<String> bootloaderVersion;

  /// Device brand. Example: Samsung.
  late final Output<String> brand;

  /// Build number of the device.
  late final Output<String> buildNumber;

  /// List of the clients the device is reporting to.
  late final Output<List<String>> clientTypes;

  /// Represents whether the Device is compromised.
  late final Output<String> compromisedState;

  /// When the Company-Owned device was imported. This field is empty for BYOD devices.
  late final Output<String> createTime;

  /// Unique identifier for the device.
  late final Output<String> deviceId;

  /// Type of device.
  late final Output<String> deviceType;

  /// Whether developer options is enabled on device.
  late final Output<bool> enabledDeveloperOptions;

  /// Whether USB debugging is enabled on device.
  late final Output<bool> enabledUsbDebugging;

  /// Device encryption state.
  late final Output<String> encryptionState;

  /// Attributes specific to Endpoint Verification devices.
  late final Output<EndpointVerificationSpecificAttributesResponse>
      endpointVerificationSpecificAttributes;

  /// Host name of the device.
  late final Output<String> hostname;

  /// IMEI number of device if GSM device; empty otherwise.
  late final Output<String> imei;

  /// Kernel version of the device.
  late final Output<String> kernelVersion;

  /// Most recent time when device synced with this service.
  late final Output<String> lastSyncTime;

  /// Management state of the device
  late final Output<String> managementState;

  /// Device manufacturer. Example: Motorola.
  late final Output<String> manufacturer;

  /// MEID number of device if CDMA device; empty otherwise.
  late final Output<String> meid;

  /// Model name of device. Example: Pixel 3.
  late final Output<String> model;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Device in format: `devices/{device_id}`, where device_id is the unique id assigned to the Device.
  late final Output<String> name;

  /// Mobile or network operator of device, if available.
  late final Output<String> networkOperator;

  /// OS version of the device. Example: Android 8.1.0.
  late final Output<String> osVersion;

  /// Domain name for Google accounts on device. Type for other accounts on device. On Android, will only be populated if |ownership_privilege| is |PROFILE_OWNER| or |DEVICE_OWNER|. Does not include the account signed in to the device policy app if that account's domain has only one account. Examples: "com.example", "xyz.com".
  late final Output<List<String>> otherAccounts;

  /// Whether the device is owned by the company or an individual
  late final Output<String> ownerType;

  /// OS release version. Example: 6.0.
  late final Output<String> releaseVersion;

  /// OS security patch update time on device.
  late final Output<String> securityPatchTime;

  /// Serial Number of device. Example: HT82V1A01076.
  late final Output<String> serialNumber;

  /// WiFi MAC addresses of device.
  late final Output<List<String>> wifiMacAddresses;

  Device2(
    String name, {
    DeviceArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1beta1:Device',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.androidSpecificAttributes =
        Output.createUnknown<AndroidAttributesResponse>();
    this.assetTag = Output.createUnknown<String>();
    this.basebandVersion = Output.createUnknown<String>();
    this.bootloaderVersion = Output.createUnknown<String>();
    this.brand = Output.createUnknown<String>();
    this.buildNumber = Output.createUnknown<String>();
    this.clientTypes = Output.createUnknown<List<String>>();
    this.compromisedState = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.deviceId = Output.createUnknown<String>();
    this.deviceType = Output.createUnknown<String>();
    this.enabledDeveloperOptions = Output.createUnknown<bool>();
    this.enabledUsbDebugging = Output.createUnknown<bool>();
    this.encryptionState = Output.createUnknown<String>();
    this.endpointVerificationSpecificAttributes =
        Output.createUnknown<EndpointVerificationSpecificAttributesResponse>();
    this.hostname = Output.createUnknown<String>();
    this.imei = Output.createUnknown<String>();
    this.kernelVersion = Output.createUnknown<String>();
    this.lastSyncTime = Output.createUnknown<String>();
    this.managementState = Output.createUnknown<String>();
    this.manufacturer = Output.createUnknown<String>();
    this.meid = Output.createUnknown<String>();
    this.model = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.networkOperator = Output.createUnknown<String>();
    this.osVersion = Output.createUnknown<String>();
    this.otherAccounts = Output.createUnknown<List<String>>();
    this.ownerType = Output.createUnknown<String>();
    this.releaseVersion = Output.createUnknown<String>();
    this.securityPatchTime = Output.createUnknown<String>();
    this.serialNumber = Output.createUnknown<String>();
    this.wifiMacAddresses = Output.createUnknown<List<String>>();
  }
}
