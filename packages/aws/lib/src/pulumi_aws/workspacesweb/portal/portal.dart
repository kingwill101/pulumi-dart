import 'package:pulumi/pulumi.dart' as pulumi;
import '../portal_timeouts/portal_timeouts.dart';
import 'portal_args.dart';

/// Resource for managing an AWS WorkSpaces Web Portal.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Complete Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Web Portal using the `portal_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:workspacesweb/portal:Portal example arn:aws:workspaces-web:us-west-2:123456789012:portal/abcdef12345678
/// ```
class Portal extends pulumi.CustomResource {
  /// Additional encryption context for the customer managed key. Forces replacement if changed.
  late final pulumi.Output<Map<String, String>?> additionalEncryptionContext;

  /// Authentication type for the portal. Valid values: `Standard`, `IAM_Identity_Center`.
  late final pulumi.Output<String> authenticationType;

  /// ARN of the browser settings to use for the portal.
  late final pulumi.Output<String> browserSettingsArn;

  /// Browser type of the portal.
  late final pulumi.Output<String> browserType;

  /// Creation date of the portal.
  late final pulumi.Output<String> creationDate;

  /// ARN of the customer managed key. Forces replacement if changed.
  late final pulumi.Output<String?> customerManagedKey;

  /// ARN of the data protection settings associated with the portal.
  late final pulumi.Output<String> dataProtectionSettingsArn;

  /// Display name of the portal.
  late final pulumi.Output<String> displayName;

  /// Instance type for the portal. Valid values: `standard.regular`, `standard.large`.
  late final pulumi.Output<String> instanceType;

  /// ARN of the IP access settings associated with the portal.
  late final pulumi.Output<String> ipAccessSettingsArn;

  /// Maximum number of concurrent sessions for the portal.
  late final pulumi.Output<int> maxConcurrentSessions;

  /// ARN of the network settings associated with the portal.
  late final pulumi.Output<String> networkSettingsArn;

  /// ARN of the portal.
  late final pulumi.Output<String> portalArn;

  /// Endpoint URL of the portal.
  late final pulumi.Output<String> portalEndpoint;

  /// Status of the portal.
  late final pulumi.Output<String> portalStatus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Renderer type of the portal.
  late final pulumi.Output<String> rendererType;

  /// ARN of the session logger associated with the portal.
  late final pulumi.Output<String> sessionLoggerArn;

  /// Reason for the current status of the portal.
  late final pulumi.Output<String> statusReason;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<PortalTimeouts?> timeouts;

  /// ARN of the trust store associated with the portal.
  late final pulumi.Output<String> trustStoreArn;

  /// ARN of the user access logging settings associated with the portal.
  late final pulumi.Output<String> userAccessLoggingSettingsArn;

  /// ARN of the user settings associated with the portal.
  late final pulumi.Output<String> userSettingsArn;

  Portal(
    String name, {
    PortalArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspacesweb/portal:Portal',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalEncryptionContext =
        registerOutput<Map<String, String>?>('additionalEncryptionContext');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.browserSettingsArn = registerOutput<String>('browserSettingsArn');
    this.browserType = registerOutput<String>('browserType');
    this.creationDate = registerOutput<String>('creationDate');
    this.customerManagedKey = registerOutput<String?>('customerManagedKey');
    this.dataProtectionSettingsArn =
        registerOutput<String>('dataProtectionSettingsArn');
    this.displayName = registerOutput<String>('displayName');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipAccessSettingsArn = registerOutput<String>('ipAccessSettingsArn');
    this.maxConcurrentSessions = registerOutput<int>('maxConcurrentSessions');
    this.networkSettingsArn = registerOutput<String>('networkSettingsArn');
    this.portalArn = registerOutput<String>('portalArn');
    this.portalEndpoint = registerOutput<String>('portalEndpoint');
    this.portalStatus = registerOutput<String>('portalStatus');
    this.region = registerOutput<String>('region');
    this.rendererType = registerOutput<String>('rendererType');
    this.sessionLoggerArn = registerOutput<String>('sessionLoggerArn');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<PortalTimeouts?>('timeouts');
    this.trustStoreArn = registerOutput<String>('trustStoreArn');
    this.userAccessLoggingSettingsArn =
        registerOutput<String>('userAccessLoggingSettingsArn');
    this.userSettingsArn = registerOutput<String>('userSettingsArn');
  }
}
