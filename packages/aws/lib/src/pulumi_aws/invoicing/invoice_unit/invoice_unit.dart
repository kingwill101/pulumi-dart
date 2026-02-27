import 'package:pulumi/pulumi.dart';
import '../invoice_unit_rule/invoice_unit_rule.dart';
import '../invoice_unit_timeouts/invoice_unit_timeouts.dart';
import 'invoice_unit_args.dart';

/// Manages an AWS Invoice Unit for organizational billing.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Invoice Units using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:invoicing/invoiceUnit:InvoiceUnit example arn:aws:invoicing::123456789012:invoice-unit/example-id
/// ```
class InvoiceUnit extends CustomResource {
  /// ARN of the invoice unit.
  late final Output<String> arn;

  /// Description of the invoice unit.
  late final Output<String?> description;

  /// AWS account ID that receives invoices for this unit. Cannot be changed after creation.
  late final Output<String> invoiceReceiver;

  /// Timestamp when the invoice unit was last modified.
  late final Output<String> lastModified;

  /// Unique name of the invoice unit. Cannot be changed after creation.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block for invoice unit rules. See `rule` below.
  ///
  /// The following arguments are optional:
  late final Output<List<InvoiceUnitRule>?> rules;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Whether tax inheritance is disabled for this invoice unit.
  late final Output<bool> taxInheritanceDisabled;
  late final Output<InvoiceUnitTimeouts?> timeouts;

  InvoiceUnit(
    String name, {
    InvoiceUnitArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:invoicing/invoiceUnit:InvoiceUnit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.invoiceReceiver = registerOutput<String>('invoiceReceiver');
    this.lastModified = registerOutput<String>('lastModified');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.rules = registerOutput<List<InvoiceUnitRule>?>('rules');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.taxInheritanceDisabled =
        registerOutput<bool>('taxInheritanceDisabled');
    this.timeouts = registerOutput<InvoiceUnitTimeouts?>('timeouts');
  }
}
