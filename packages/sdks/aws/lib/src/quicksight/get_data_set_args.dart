// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_quicksight_get_data_set_get_data_set_args_doc}
/// Arguments for getDataSet.
/// {@endtemplate}
/// {@macro pulumi_quicksight_get_data_set_get_data_set_args_doc}
class GetDataSetArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Identifier for the data set.
  final pulumi.Input<String> dataSetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDataSetArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [dataSetId] Identifier for the data set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetDataSetArgs({
    pulumi.Output<String>? awsAccountId,
    required pulumi.Output<String> dataSetId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'dataSetId': dataSetId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDataSetArgs.fromMap(Map<String, dynamic> map) {
    return GetDataSetArgs(
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      dataSetId: pulumi.Output.create<String>(map['dataSetId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

