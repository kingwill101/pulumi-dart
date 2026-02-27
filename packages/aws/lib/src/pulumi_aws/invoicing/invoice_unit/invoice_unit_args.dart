// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../invoice_unit_rule/invoice_unit_rule.dart';
import '../invoice_unit_timeouts/invoice_unit_timeouts.dart';

/// The set of arguments for InvoiceUnit.
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

  InvoiceUnitArgs({
    this.description,
    required this.invoiceReceiver,
    this.name,
    this.region,
    this.rules,
    this.tags,
    this.taxInheritanceDisabled,
    this.timeouts,
  });

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      invoiceReceiver: pulumi.Input.asInput<String>(map['invoiceReceiver']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rules: pulumi.Input.asOptionalInput<List<InvoiceUnitRule>>(map['rules']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      taxInheritanceDisabled:
          pulumi.Input.asOptionalInput<bool>(map['taxInheritanceDisabled']),
      timeouts:
          pulumi.Input.asOptionalInput<InvoiceUnitTimeouts>(map['timeouts']),
    );
  }
}
