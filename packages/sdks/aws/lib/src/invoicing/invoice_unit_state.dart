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
      'rules': ?pulumi.Input.mapOptionalInputValue<List<InvoiceUnitRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<InvoiceUnitRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taxInheritanceDisabled': ?taxInheritanceDisabled,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InvoiceUnitTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InvoiceUnitState.fromMap(Map<String, dynamic> map) {
    return InvoiceUnitState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      invoiceReceiver: map['invoiceReceiver'] == null ? null : ((map['invoiceReceiver'] as String).input()).input(),
      lastModified: map['lastModified'] == null ? null : ((map['lastModified'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      rules: map['rules'] == null ? null : ((pulumi.Input.decodeList<InvoiceUnitRule>(map['rules']!, (value) => InvoiceUnitRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      taxInheritanceDisabled: map['taxInheritanceDisabled'] == null ? null : ((map['taxInheritanceDisabled'] as bool).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((InvoiceUnitTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

