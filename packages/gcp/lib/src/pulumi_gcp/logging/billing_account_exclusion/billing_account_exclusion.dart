import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_account_exclusion_args.dart';

/// ## Example Usage
///
///
///
/// ## Import
///
/// Billing account logging exclusions can be imported using their URI, e.g.
///
/// * `billingAccounts/{{billing_account}}/exclusions/{{name}}`
///
/// When using the `pulumi import` command, billing account logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/billingAccountExclusion:BillingAccountExclusion default billingAccounts/{{billing_account}}/exclusions/{{name}}
/// ```
class BillingAccountExclusion extends pulumi.CustomResource {
  /// The billing account to create the exclusion for.
  late final pulumi.Output<String> billingAccount;

  /// A human-readable description.
  late final pulumi.Output<String?> description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final pulumi.Output<bool?> disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final pulumi.Output<String> filter;

  /// The name of the logging exclusion.
  late final pulumi.Output<String> name;

  BillingAccountExclusion(
    String name, {
    BillingAccountExclusionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountExclusion:BillingAccountExclusion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingAccount = registerOutput<String>('billingAccount');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
  }
}
