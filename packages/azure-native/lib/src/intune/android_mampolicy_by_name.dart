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
    this.accessRecheckOfflineTimeout = registerOutput<String?>('accessRecheckOfflineTimeout');
    this.accessRecheckOnlineTimeout = registerOutput<String?>('accessRecheckOnlineTimeout');
    this.appSharingFromLevel = registerOutput<String?>('appSharingFromLevel');
    this.appSharingToLevel = registerOutput<String?>('appSharingToLevel');
    this.authentication = registerOutput<String?>('authentication');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clipboardSharingLevel = registerOutput<String?>('clipboardSharingLevel');
    this.dataBackup = registerOutput<String?>('dataBackup');
    this.description = registerOutput<String?>('description');
    this.deviceCompliance = registerOutput<String?>('deviceCompliance');
    this.fileEncryption = registerOutput<String?>('fileEncryption');
    this.fileSharingSaveAs = registerOutput<String?>('fileSharingSaveAs');
    this.friendlyName = registerOutput<String>('friendlyName');
    this.groupStatus = registerOutput<String>('groupStatus');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.location = registerOutput<String?>('location');
    this.managedBrowser = registerOutput<String?>('managedBrowser');
    this.name = registerOutput<String>('name');
    this.numOfApps = registerOutput<int>('numOfApps');
    this.offlineWipeTimeout = registerOutput<String?>('offlineWipeTimeout');
    this.pin = registerOutput<String?>('pin');
    this.pinNumRetry = registerOutput<int?>('pinNumRetry');
    this.screenCapture = registerOutput<String?>('screenCapture');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
