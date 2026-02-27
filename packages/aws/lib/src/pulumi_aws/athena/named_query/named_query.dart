import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_query_args.dart';

/// Provides an Athena Named Query resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Named Query using the query ID. For example:
///
/// ```sh
/// $ pulumi import aws:athena/namedQuery:NamedQuery example 0123456789
/// ```
class NamedQuery extends pulumi.CustomResource {
  /// Database to which the query belongs.
  late final pulumi.Output<String> database;

  /// Brief explanation of the query. Maximum length of 1024.
  late final pulumi.Output<String?> description;

  /// Plain language name for the query. Maximum length of 128.
  late final pulumi.Output<String> name;

  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  late final pulumi.Output<String> query;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Workgroup to which the query belongs. Defaults to `primary`
  late final pulumi.Output<String?> workgroup;

  NamedQuery(
    String name, {
    NamedQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/namedQuery:NamedQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.database = registerOutput<String>('database');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.query = registerOutput<String>('query');
    this.region = registerOutput<String>('region');
    this.workgroup = registerOutput<String?>('workgroup');
  }
}
