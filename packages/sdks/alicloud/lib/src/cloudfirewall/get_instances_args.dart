// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_get_instances_get_instances_args_doc}
/// Arguments for getInstances.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_get_instances_get_instances_args_doc}
class GetInstancesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The payment type of the cloud firewall instance. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String>? paymentType;

  /// Creates a new [GetInstancesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] The payment type of the cloud firewall instance. Valid values: `PayAsYouGo`,`Subscription`.
  GetInstancesArgs({
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? paymentType,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
    };
  }

  factory GetInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstancesArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
    );
  }
}

