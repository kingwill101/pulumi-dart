// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoice_unit_rule.dart';
import 'invoice_unit_timeouts.dart';

/// {@template pulumi_invoicing_invoice_unit_invoice_unit_args_doc}
/// The set of arguments for InvoiceUnit.
/// {@endtemplate}
/// {@macro pulumi_invoicing_invoice_unit_invoice_unit_args_doc}
class InvoiceUnitArgs {
  /// Description of the invoice unit.
  final pulumi.Input<String>? description;

  /// AWS account ID that receives invoices for this unit. Cannot be changed after creation.
  final pulumi.Input<String> invoiceReceiver;

  /// Unique name of the invoice unit. Cannot be changed after creation.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for invoice unit rules. See `rule` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<InvoiceUnitRule>>? rules;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whether tax inheritance is disabled for this invoice unit.
  final pulumi.Input<bool>? taxInheritanceDisabled;
  final pulumi.Input<InvoiceUnitTimeouts>? timeouts;

  /// Creates a new [InvoiceUnitArgs].
  /// [description] Description of the invoice unit.
  /// [invoiceReceiver] AWS account ID that receives invoices for this unit. Cannot be changed after creation.
  /// [name] Unique name of the invoice unit. Cannot be changed after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Configuration block for invoice unit rules. See `rule` below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taxInheritanceDisabled] Whether tax inheritance is disabled for this invoice unit.
  /// [timeouts] Optional.
  InvoiceUnitArgs({
    String? description,
    required String invoiceReceiver,
    String? name,
    String? region,
    List<InvoiceUnitRule>? rules,
    Map<String, String>? tags,
    bool? taxInheritanceDisabled,
    InvoiceUnitTimeouts? timeouts,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        invoiceReceiver = pulumi.Input.asInput<String>(invoiceReceiver),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        rules = pulumi.Input.asOptionalInput<List<InvoiceUnitRule>>(rules),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        taxInheritanceDisabled =
            pulumi.Input.asOptionalInput<bool>(taxInheritanceDisabled),
        timeouts = pulumi.Input.asOptionalInput<InvoiceUnitTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['invoiceReceiver'] = invoiceReceiver;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<List<InvoiceUnitRule>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) =>
              pulumi.Input.encodeList<InvoiceUnitRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final taxInheritanceDisabledValue = taxInheritanceDisabled;
    if (taxInheritanceDisabledValue != null) {
      map['taxInheritanceDisabled'] = taxInheritanceDisabledValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<InvoiceUnitTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InvoiceUnitArgs.fromMap(Map<String, dynamic> map) {
    return InvoiceUnitArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      invoiceReceiver: map['invoiceReceiver'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: map['rules'] == null
          ? null
          : pulumi.Input.decodeList<InvoiceUnitRule>(
              map['rules'],
              (value) => InvoiceUnitRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      taxInheritanceDisabled: map['taxInheritanceDisabled'] == null
          ? null
          : map['taxInheritanceDisabled'] as bool,
      timeouts: map['timeouts'] == null
          ? null
          : InvoiceUnitTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
