// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoice_unit_rule.dart';
import 'invoice_unit_timeouts.dart';

/// Input properties used for looking up and filtering InvoiceUnit resources.
class InvoiceUnitState {
  /// ARN of the invoice unit.
  final pulumi.Input<String>? arn;

  /// Description of the invoice unit.
  final pulumi.Input<String>? description;

  /// AWS account ID that receives invoices for this unit. Cannot be changed after creation.
  final pulumi.Input<String>? invoiceReceiver;

  /// Timestamp when the invoice unit was last modified.
  final pulumi.Input<String>? lastModified;

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

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Whether tax inheritance is disabled for this invoice unit.
  final pulumi.Input<bool>? taxInheritanceDisabled;
  final pulumi.Input<InvoiceUnitTimeouts>? timeouts;

  /// Creates a new [InvoiceUnitState].
  /// [arn] ARN of the invoice unit.
  /// [description] Description of the invoice unit.
  /// [invoiceReceiver] AWS account ID that receives invoices for this unit. Cannot be changed after creation.
  /// [lastModified] Timestamp when the invoice unit was last modified.
  /// [name] Unique name of the invoice unit. Cannot be changed after creation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Configuration block for invoice unit rules. See `rule` below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [taxInheritanceDisabled] Whether tax inheritance is disabled for this invoice unit.
  /// [timeouts] Optional.
  InvoiceUnitState({
    this.arn,
    this.description,
    this.invoiceReceiver,
    this.lastModified,
    this.name,
    this.region,
    this.rules,
    this.tags,
    this.tagsAll,
    this.taxInheritanceDisabled,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'invoiceReceiver': ?invoiceReceiver,
      'lastModified': ?lastModified,
      'name': ?name,
      'region': ?region,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<InvoiceUnitRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<InvoiceUnitRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taxInheritanceDisabled': ?taxInheritanceDisabled,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            InvoiceUnitTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory InvoiceUnitState.fromMap(Map<String, dynamic> map) {
    return InvoiceUnitState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      invoiceReceiver: (() {
        final guardedValue = map['invoiceReceiver'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastModified: (() {
        final guardedValue = map['lastModified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InvoiceUnitRule>(
            guardedValue,
            (value) =>
                InvoiceUnitRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      taxInheritanceDisabled: (() {
        final guardedValue = map['taxInheritanceDisabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InvoiceUnitTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
