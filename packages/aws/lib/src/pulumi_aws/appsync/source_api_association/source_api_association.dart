import 'package:pulumi/pulumi.dart';
import '../source_api_association_source_api_association_config/source_api_association_source_api_association_config.dart';
import '../source_api_association_timeouts/source_api_association_timeouts.dart';
import 'source_api_association_args.dart';

/// Resource for managing an AWS AppSync Source API Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Source API Association using the `association_id` and `merged_api_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/sourceApiAssociation:SourceApiAssociation example gzos6bteufdunffzzifiowisoe,243685a0-9347-4a1a-89c1-9b57dea01e31
/// ```
class SourceApiAssociation extends CustomResource {
  /// ARN of the Source API Association.
  late final Output<String> arn;

  /// ID of the Source API Association.
  late final Output<String> associationId;

  /// Description of the source API being merged.
  late final Output<String?> description;

  /// ARN of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  late final Output<String> mergedApiArn;

  /// ID of the merged API. One of `merged_api_arn` or `merged_api_id` must be specified.
  late final Output<String> mergedApiId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  late final Output<String> sourceApiArn;
  late final Output<List<SourceApiAssociationSourceApiAssociationConfig>>
      sourceApiAssociationConfigs;

  /// ID of the source API. One of `source_api_arn` or `source_api_id` must be specified.
  late final Output<String> sourceApiId;
  late final Output<SourceApiAssociationTimeouts?> timeouts;

  SourceApiAssociation(
    String name, {
    SourceApiAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/sourceApiAssociation:SourceApiAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.description = registerOutput<String?>('description');
    this.mergedApiArn = registerOutput<String>('mergedApiArn');
    this.mergedApiId = registerOutput<String>('mergedApiId');
    this.region = registerOutput<String>('region');
    this.sourceApiArn = registerOutput<String>('sourceApiArn');
    this.sourceApiAssociationConfigs =
        registerOutput<List<SourceApiAssociationSourceApiAssociationConfig>>(
            'sourceApiAssociationConfigs');
    this.sourceApiId = registerOutput<String>('sourceApiId');
    this.timeouts = registerOutput<SourceApiAssociationTimeouts?>('timeouts');
  }
}
