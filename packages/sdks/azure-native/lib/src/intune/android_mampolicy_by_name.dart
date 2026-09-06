import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_mampolicy_by_name_args.dart';

/// Android Policy entity for Intune MAM.
///
/// Uses Azure REST API version 2015-01-14-preview. In version 2.x of the Azure Native provider, it used API version 2015-01-14-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:intune:AndroidMAMPolicyByName myresource1 /providers/Microsoft.Intune/locations/{hostName}/androidPolicies/{policyName}
/// ```
class AndroidMAMPolicyByName extends pulumi.CustomResource {
  late final pulumi.Output<String?> accessRecheckOfflineTimeout;
  late final pulumi.Output<String?> accessRecheckOnlineTimeout;
  late final pulumi.Output<String?> appSharingFromLevel;
  late final pulumi.Output<String?> appSharingToLevel;
  late final pulumi.Output<String?> authentication;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String?> clipboardSharingLevel;
  late final pulumi.Output<String?> dataBackup;
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String?> deviceCompliance;
  late final pulumi.Output<String?> fileEncryption;
  late final pulumi.Output<String?> fileSharingSaveAs;
  late final pulumi.Output<String> friendlyName;
  late final pulumi.Output<String> groupStatus;
  late final pulumi.Output<String> lastModifiedTime;
  /// Resource Location
  late final pulumi.Output<String?> location;
  late final pulumi.Output<String?> managedBrowser;
  /// Resource name
  late final pulumi.Output<String> name;
  late final pulumi.Output<int> numOfApps;
  late final pulumi.Output<String?> offlineWipeTimeout;
  late final pulumi.Output<String?> pin;
  late final pulumi.Output<int?> pinNumRetry;
  late final pulumi.Output<String?> screenCapture;
  /// Resource Tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [AndroidMAMPolicyByName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AndroidMAMPolicyByName]. {@macro pulumi_intune_android_mampolicy_by_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AndroidMAMPolicyByName(
    String name, {
    AndroidMAMPolicyByNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:intune:AndroidMAMPolicyByName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRecheckOfflineTimeout = registerOutput<String?>('accessRecheckOfflineTimeout');
    accessRecheckOnlineTimeout = registerOutput<String?>('accessRecheckOnlineTimeout');
    appSharingFromLevel = registerOutput<String?>('appSharingFromLevel');
    appSharingToLevel = registerOutput<String?>('appSharingToLevel');
    authentication = registerOutput<String?>('authentication');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clipboardSharingLevel = registerOutput<String?>('clipboardSharingLevel');
    dataBackup = registerOutput<String?>('dataBackup');
    description = registerOutput<String?>('description');
    deviceCompliance = registerOutput<String?>('deviceCompliance');
    fileEncryption = registerOutput<String?>('fileEncryption');
    fileSharingSaveAs = registerOutput<String?>('fileSharingSaveAs');
    friendlyName = registerOutput<String>('friendlyName');
    groupStatus = registerOutput<String>('groupStatus');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String?>('location');
    managedBrowser = registerOutput<String?>('managedBrowser');
    this.name = registerOutput<String>('name');
    numOfApps = registerOutput<int>('numOfApps');
    offlineWipeTimeout = registerOutput<String?>('offlineWipeTimeout');
    pin = registerOutput<String?>('pin');
    pinNumRetry = registerOutput<int?>('pinNumRetry');
    screenCapture = registerOutput<String?>('screenCapture');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [AndroidMAMPolicyByName] resource.
  AndroidMAMPolicyByName.reference(String urn)
    : super(
        'azure-native:intune:AndroidMAMPolicyByName',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessRecheckOfflineTimeout = registerOutput<String?>('accessRecheckOfflineTimeout');
    accessRecheckOnlineTimeout = registerOutput<String?>('accessRecheckOnlineTimeout');
    appSharingFromLevel = registerOutput<String?>('appSharingFromLevel');
    appSharingToLevel = registerOutput<String?>('appSharingToLevel');
    authentication = registerOutput<String?>('authentication');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clipboardSharingLevel = registerOutput<String?>('clipboardSharingLevel');
    dataBackup = registerOutput<String?>('dataBackup');
    description = registerOutput<String?>('description');
    deviceCompliance = registerOutput<String?>('deviceCompliance');
    fileEncryption = registerOutput<String?>('fileEncryption');
    fileSharingSaveAs = registerOutput<String?>('fileSharingSaveAs');
    friendlyName = registerOutput<String>('friendlyName');
    groupStatus = registerOutput<String>('groupStatus');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    location = registerOutput<String?>('location');
    managedBrowser = registerOutput<String?>('managedBrowser');
    this.name = registerOutput<String>('name');
    numOfApps = registerOutput<int>('numOfApps');
    offlineWipeTimeout = registerOutput<String?>('offlineWipeTimeout');
    pin = registerOutput<String?>('pin');
    pinNumRetry = registerOutput<int?>('pinNumRetry');
    screenCapture = registerOutput<String?>('screenCapture');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
