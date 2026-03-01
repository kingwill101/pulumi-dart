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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? invoiceReceiver,
    pulumi.Output<String>? lastModified,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<List<InvoiceUnitRule>>? rules,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? taxInheritanceDisabled,
    pulumi.Output<InvoiceUnitTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      invoiceReceiver = pulumi.Input.asOptionalInput<String>(invoiceReceiver),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<InvoiceUnitRule>>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      taxInheritanceDisabled = pulumi.Input.asOptionalInput<bool>(taxInheritanceDisabled),
      timeouts = pulumi.Input.asOptionalInput<InvoiceUnitTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      invoiceReceiver: map['invoiceReceiver'] == null ? null : pulumi.Output.create<String>(map['invoiceReceiver'] as String),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<InvoiceUnitRule>>(pulumi.Input.decodeList<InvoiceUnitRule>(map['rules'], (value) => InvoiceUnitRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      taxInheritanceDisabled: map['taxInheritanceDisabled'] == null ? null : pulumi.Output.create<bool>(map['taxInheritanceDisabled'] as bool),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<InvoiceUnitTimeouts>(InvoiceUnitTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

