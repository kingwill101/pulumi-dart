import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_injection_match_set_args.dart';
import 'sql_injection_match_set_sql_injection_match_tuple.dart';
import 'sql_injection_match_set_state.dart';

/// Provides a WAF SQL Injection Match Set Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sqlInjectionMatchSet = new aws.waf.SqlInjectionMatchSet("sql_injection_match_set", {
///     name: "tf-sql_injection_match_set",
///     sqlInjectionMatchTuples: [{
///         textTransformation: "URL_DECODE",
///         fieldToMatch: {
///             type: "QUERY_STRING",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sql_injection_match_set = aws.waf.SqlInjectionMatchSet("sql_injection_match_set",
///     name="tf-sql_injection_match_set",
///     sql_injection_match_tuples=[{
///         "text_transformation": "URL_DECODE",
///         "field_to_match": {
///             "type": "QUERY_STRING",
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlInjectionMatchSet = new Aws.Waf.SqlInjectionMatchSet("sql_injection_match_set", new()
///     {
///         Name = "tf-sql_injection_match_set",
///         SqlInjectionMatchTuples = new[]
///         {
///             new Aws.Waf.Inputs.SqlInjectionMatchSetSqlInjectionMatchTupleArgs
///             {
///                 TextTransformation = "URL_DECODE",
///                 FieldToMatch = new Aws.Waf.Inputs.SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs
///                 {
///                     Type = "QUERY_STRING",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := waf.NewSqlInjectionMatchSet(ctx, "sql_injection_match_set", &waf.SqlInjectionMatchSetArgs{
/// 			Name: pulumi.String("tf-sql_injection_match_set"),
/// 			SqlInjectionMatchTuples: waf.SqlInjectionMatchSetSqlInjectionMatchTupleArray{
/// 				&waf.SqlInjectionMatchSetSqlInjectionMatchTupleArgs{
/// 					TextTransformation: pulumi.String("URL_DECODE"),
/// 					FieldToMatch: &waf.SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs{
/// 						Type: pulumi.String("QUERY_STRING"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.waf.SqlInjectionMatchSet;
/// import com.pulumi.aws.waf.SqlInjectionMatchSetArgs;
/// import com.pulumi.aws.waf.inputs.SqlInjectionMatchSetSqlInjectionMatchTupleArgs;
/// import com.pulumi.aws.waf.inputs.SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var sqlInjectionMatchSet = new SqlInjectionMatchSet("sqlInjectionMatchSet", SqlInjectionMatchSetArgs.builder()
///             .name("tf-sql_injection_match_set")
///             .sqlInjectionMatchTuples(SqlInjectionMatchSetSqlInjectionMatchTupleArgs.builder()
///                 .textTransformation("URL_DECODE")
///                 .fieldToMatch(SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs.builder()
///                     .type("QUERY_STRING")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sqlInjectionMatchSet:
///     type: aws:waf:SqlInjectionMatchSet
///     name: sql_injection_match_set
///     properties:
///       name: tf-sql_injection_match_set
///       sqlInjectionMatchTuples:
///         - textTransformation: URL_DECODE
///           fieldToMatch:
///             type: QUERY_STRING
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS WAF SQL Injection Match Set using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:waf/sqlInjectionMatchSet:SqlInjectionMatchSet example a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SqlInjectionMatchSet extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the SQL injection match set.
  late final pulumi.Output<String> arn;
  /// The name or description of the SQL Injection Match Set.
  late final pulumi.Output<String> name;
  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  late final pulumi.Output<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?> sqlInjectionMatchTuples;

  /// Creates a new [SqlInjectionMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlInjectionMatchSet]. {@macro pulumi_waf_sql_injection_match_set_sql_injection_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlInjectionMatchSet(
    String name, {
    SqlInjectionMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/sqlInjectionMatchSet:SqlInjectionMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.sqlInjectionMatchTuples = registerOutput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>('sqlInjectionMatchTuples');
  }

  /// Gets an existing [SqlInjectionMatchSet] resource's state with the given [name] and [id].
  static SqlInjectionMatchSet get(
    String name,
    pulumi.Input<String> id, {
    SqlInjectionMatchSetState? state,
  }) {
    return SqlInjectionMatchSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SqlInjectionMatchSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:waf/sqlInjectionMatchSet:SqlInjectionMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.sqlInjectionMatchTuples = registerOutput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>('sqlInjectionMatchTuples');
  }
}
