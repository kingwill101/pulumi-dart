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
        registerOutput<AndroidAttributesResponse>('androidSpecificAttributes');
    this.assetTag = registerOutput<String>('assetTag');
    this.basebandVersion = registerOutput<String>('basebandVersion');
    this.bootloaderVersion = registerOutput<String>('bootloaderVersion');
    this.brand = registerOutput<String>('brand');
    this.buildNumber = registerOutput<String>('buildNumber');
    this.clientTypes = registerOutput<List<String>>('clientTypes');
    this.compromisedState = registerOutput<String>('compromisedState');
    this.createTime = registerOutput<String>('createTime');
    this.deviceId = registerOutput<String>('deviceId');
    this.deviceType = registerOutput<String>('deviceType');
    this.enabledDeveloperOptions =
        registerOutput<bool>('enabledDeveloperOptions');
    this.enabledUsbDebugging = registerOutput<bool>('enabledUsbDebugging');
    this.encryptionState = registerOutput<String>('encryptionState');
    this.endpointVerificationSpecificAttributes =
        registerOutput<EndpointVerificationSpecificAttributesResponse>(
            'endpointVerificationSpecificAttributes');
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
