import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_args.dart';

/// Manages a trust relationship between two Active Directory Directories.
///
/// The directories may either be both AWS Managed Microsoft AD domains or an AWS Managed Microsoft AD domain and a self-managed Active Directory Domain.
///
/// The Trust relationship must be configured on both sides of the relationship.
/// If a Trust has only been created on one side, it will be in the state `VerifyFailed`.
/// Once the second Trust is created, the first will update to the correct state.
///
/// ## Example Usage
///
/// ### Two-Way Trust
///
///
///
/// ### One-Way Trust
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the Trust relationship using the directory ID and remote domain name, separated by a `/`. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/trust:Trust example d-926724cf57/directory.example.com
/// ```
class Trust extends pulumi.CustomResource {
  /// Set of IPv4 addresses for the DNS server associated with the remote Directory.
  /// Can contain between 1 and 4 values.
  late final pulumi.Output<List<String>?> conditionalForwarderIpAddrs;

  /// Date and time when the Trust was created.
  late final pulumi.Output<String> createdDateTime;

  /// Whether to delete the conditional forwarder when deleting the Trust relationship.
  late final pulumi.Output<bool> deleteAssociatedConditionalForwarder;

  /// ID of the Directory.
  late final pulumi.Output<String> directoryId;

  /// Date and time when the Trust was last updated.
  late final pulumi.Output<String> lastUpdatedDateTime;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Fully qualified domain name of the remote Directory.
  late final pulumi.Output<String> remoteDomainName;

  /// Whether to enable selective authentication.
  /// Valid values are `Enabled` and `Disabled`.
  /// Default value is `Disabled`.
  late final pulumi.Output<String> selectiveAuth;

  /// Date and time when the Trust state in `trust_state` was last updated.
  late final pulumi.Output<String> stateLastUpdatedDateTime;

  /// The direction of the Trust relationship.
  /// Valid values are `One-Way: Outgoing`, `One-Way: Incoming`, and `Two-Way`.
  late final pulumi.Output<String> trustDirection;

  /// Password for the Trust.
  /// Does not need to match the passwords for either Directory.
  /// Can contain upper- and lower-case letters, numbers, and punctuation characters.
  /// May be up to 128 characters long.
  late final pulumi.Output<String> trustPassword;

  /// State of the Trust relationship.
  /// One of `Created`, `VerifyFailed`,`Verified`, `UpdateFailed`,`Updated`,`Deleted`, or `Failed`.
  late final pulumi.Output<String> trustState;

  /// Reason for the Trust state set in `trust_state`.
  late final pulumi.Output<String> trustStateReason;

  /// Type of the Trust relationship.
  /// Valid values are `Forest` and `External`.
  /// Default value is `Forest`.
  late final pulumi.Output<String> trustType;

  Trust(
    String name, {
    TrustArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/trust:Trust',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conditionalForwarderIpAddrs =
        registerOutput<List<String>?>('conditionalForwarderIpAddrs');
    this.createdDateTime = registerOutput<String>('createdDateTime');
    this.deleteAssociatedConditionalForwarder =
        registerOutput<bool>('deleteAssociatedConditionalForwarder');
    this.directoryId = registerOutput<String>('directoryId');
    this.lastUpdatedDateTime = registerOutput<String>('lastUpdatedDateTime');
    this.region = registerOutput<String>('region');
    this.remoteDomainName = registerOutput<String>('remoteDomainName');
    this.selectiveAuth = registerOutput<String>('selectiveAuth');
    this.stateLastUpdatedDateTime =
        registerOutput<String>('stateLastUpdatedDateTime');
    this.trustDirection = registerOutput<String>('trustDirection');
    this.trustPassword = registerOutput<String>('trustPassword');
    this.trustState = registerOutput<String>('trustState');
    this.trustStateReason = registerOutput<String>('trustStateReason');
    this.trustType = registerOutput<String>('trustType');
  }
}
