import 'package:pulumi/pulumi.dart' as pulumi;
import 'io_mampolicy_by_name_args.dart';

/// iOS Policy entity for Intune MAM.
///
/// Uses Azure REST API version 2015-01-14-preview. In version 2.x of the Azure Native provider, it used API version 2015-01-14-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:intune:IoMAMPolicyByName myresource1 /providers/Microsoft.Intune/locations/{hostName}/iosPolicies/{policyName}
/// ```
class IoMAMPolicyByName extends pulumi.CustomResource {
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
  late final pulumi.Output<String?> fileEncryptionLevel;
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
  /// Resource Tags
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String?> touchId;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [IoMAMPolicyByName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IoMAMPolicyByName]. {@macro pulumi_intune_io_mampolicy_by_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IoMAMPolicyByName(
    String name, {
    IoMAMPolicyByNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:intune:IoMAMPolicyByName',
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
    this.fileEncryptionLevel = registerOutput<String?>('fileEncryptionLevel');
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
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.touchId = registerOutput<String?>('touchId');
    this.type = registerOutput<String>('type');
  }
}
