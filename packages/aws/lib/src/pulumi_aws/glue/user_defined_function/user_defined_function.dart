import 'package:pulumi/pulumi.dart';
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
class UserDefinedFunction extends CustomResource {
  /// The ARN of the Glue User Defined Function.
  late final Output<String> arn;

  /// ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID.
  late final Output<String?> catalogId;

  /// The Java class that contains the function code.
  late final Output<String> className;

  /// The time at which the function was created.
  late final Output<String> createTime;

  /// The name of the Database to create the Function.
  late final Output<String> databaseName;

  /// The name of the function.
  late final Output<String> name;

  /// The owner of the function.
  late final Output<String> ownerName;

  /// The owner type. can be one of `USER`, `ROLE`, and `GROUP`.
  late final Output<String> ownerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The configuration block for Resource URIs. See resource uris below for more details.
  late final Output<List<UserDefinedFunctionResourceUri>?> resourceUris;

  UserDefinedFunction(
    String name, {
    UserDefinedFunctionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/userDefinedFunction:UserDefinedFunction',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
