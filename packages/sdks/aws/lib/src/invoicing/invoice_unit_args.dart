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
    return <String, dynamic>{
      'description': ?description,
      'invoiceReceiver': invoiceReceiver,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<InvoiceUnitRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<InvoiceUnitRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'taxInheritanceDisabled': ?taxInheritanceDisabled,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InvoiceUnitTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InvoiceUnitArgs.fromMap(Map<String, dynamic> map) {
    return InvoiceUnitArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invoiceReceiver: pulumi.Input.fromValue(map['invoiceReceiver'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InvoiceUnitRule>(guardedValue, (value) => InvoiceUnitRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taxInheritanceDisabled: (() { final guardedValue = map['taxInheritanceDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InvoiceUnitTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

