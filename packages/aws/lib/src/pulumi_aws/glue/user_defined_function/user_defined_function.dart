import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_defined_function_resource_uri/user_defined_function_resource_uri.dart';
import 'user_defined_function_args.dart';

/// Provides a Glue User Defined Function Resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue User Defined Functions using the `catalog_id:database_name:function_name`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:glue/userDefinedFunction:UserDefinedFunction func 123456789012:my_database:my_func
/// ```
class UserDefinedFunction extends pulumi.CustomResource {
  /// The ARN of the Glue User Defined Function.
  late final pulumi.Output<String> arn;

  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  late final pulumi.Output<String?> catalogId;

  /// The Java class that contains the function code.
  late final pulumi.Output<String> className;

  /// The time at which the function was created.
  late final pulumi.Output<String> createTime;

  /// The name of the Database to create the Function.
  late final pulumi.Output<String> databaseName;

  /// The name of the function.
  late final pulumi.Output<String> name;

  /// The owner of the function.
  late final pulumi.Output<String> ownerName;

  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  late final pulumi.Output<String> ownerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The configuration block for Resource URIs. See resource uris below for more details.
  late final pulumi.Output<List<UserDefinedFunctionResourceUri>?> resourceUris;

  UserDefinedFunction(
    String name, {
    UserDefinedFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/userDefinedFunction:UserDefinedFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogId = registerOutput<String?>('catalogId');
    this.className = registerOutput<String>('className');
    this.createTime = registerOutput<String>('createTime');
    this.databaseName = registerOutput<String>('databaseName');
    this.name = registerOutput<String>('name');
    this.ownerName = registerOutput<String>('ownerName');
    this.ownerType = registerOutput<String>('ownerType');
    this.region = registerOutput<String>('region');
    this.resourceUris =
        registerOutput<List<UserDefinedFunctionResourceUri>?>('resourceUris');
  }
}
