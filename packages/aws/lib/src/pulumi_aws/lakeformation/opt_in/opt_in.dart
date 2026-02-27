import 'package:pulumi/pulumi.dart';
import '../opt_in_condition/opt_in_condition.dart';
import '../opt_in_principal/opt_in_principal.dart';
import '../opt_in_resource_data/opt_in_resource_data.dart';
import 'opt_in_args.dart';

/// Resource for managing an AWS Lake Formation Opt In.
///
/// ## Example Usage
///
/// ### Basic Usage
class OptIn extends CustomResource {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  late final Output<List<OptInCondition>?> conditions;

  /// Last modified date and time of the record.
  late final Output<String> lastModified;
  late final Output<String> lastUpdatedBy;

  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  late final Output<List<OptInPrincipal>?> principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Structure for the resource. See Resource for more details.
  late final Output<List<OptInResourceData>?> resourceDatas;

  OptIn(
    String name, {
    OptInArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/optIn:OptIn',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.conditions = registerOutput<List<OptInCondition>?>('conditions');
    this.lastModified = registerOutput<String>('lastModified');
    this.lastUpdatedBy = registerOutput<String>('lastUpdatedBy');
    this.principals = registerOutput<List<OptInPrincipal>?>('principals');
    this.region = registerOutput<String>('region');
    this.resourceDatas =
        registerOutput<List<OptInResourceData>?>('resourceDatas');
  }
}
