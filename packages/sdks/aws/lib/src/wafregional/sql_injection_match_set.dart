import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_injection_match_set_args.dart';
import 'sql_injection_match_set_sql_injection_match_tuple.dart';
import 'sql_injection_match_set_state.dart';

/// Provides a WAF Regional SQL Injection Match Set Resource for use with Application Load Balancer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sqlInjectionMatchSet = new aws.wafregional.SqlInjectionMatchSet("sql_injection_match_set", {
///     sqlInjectionMatchTuples: [{
///         fieldToMatch: {
///             type: "QUERY_STRING",
///         },
///         textTransformation: "URL_DECODE",
///     }],
///     name: "tf-sql_injection_match_set",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sql_injection_match_set = aws.wafregional.SqlInjectionMatchSet("sql_injection_match_set",
///     sql_injection_match_tuples=[{
///         "field_to_match": {
///             "type": "QUERY_STRING",
///         },
///         "text_transformation": "URL_DECODE",
///     }],
///     name="tf-sql_injection_match_set")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlInjectionMatchSet = new Aws.WafRegional.SqlInjectionMatchSet("sql_injection_match_set", new()
///     {
///         SqlInjectionMatchTuples = new[]
///         {
///             new Aws.WafRegional.Inputs.SqlInjectionMatchSetSqlInjectionMatchTupleArgs
///             {
///                 FieldToMatch = new Aws.WafRegional.Inputs.SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs
///                 {
///                     Type = "QUERY_STRING",
///                 },
///                 TextTransformation = "URL_DECODE",
///             },
///         },
///         Name = "tf-sql_injection_match_set",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafregional"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafregional.NewSqlInjectionMatchSet(ctx, "sql_injection_match_set", &wafregional.SqlInjectionMatchSetArgs{
/// 			SqlInjectionMatchTuples: wafregional.SqlInjectionMatchSetSqlInjectionMatchTupleArray{
/// 				&wafregional.SqlInjectionMatchSetSqlInjectionMatchTupleArgs{
/// 					FieldToMatch: &wafregional.SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs{
/// 						Type: pulumi.String("QUERY_STRING"),
/// 					},
/// 					TextTransformation: pulumi.String("URL_DECODE"),
/// 				},
/// 			},
/// 			Name: pulumi.String("tf-sql_injection_match_set"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_wafregional_sqlinjectionmatchset" "sql_injection_match_set" {
///   sql_injection_match_tuples {
///     field_to_match = {
///       type = "QUERY_STRING"
///     }
///     text_transformation = "URL_DECODE"
///   }
///   name = "tf-sql_injection_match_set"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.wafregional.SqlInjectionMatchSet;
/// import com.pulumi.aws.wafregional.SqlInjectionMatchSetArgs;
/// import com.pulumi.aws.wafregional.inputs.SqlInjectionMatchSetSqlInjectionMatchTupleArgs;
/// import com.pulumi.aws.wafregional.inputs.SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .sqlInjectionMatchTuples(SqlInjectionMatchSetSqlInjectionMatchTupleArgs.builder()
///                 .fieldToMatch(SqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatchArgs.builder()
///                     .type("QUERY_STRING")
///                     .build())
///                 .textTransformation("URL_DECODE")
///                 .build())
///             .name("tf-sql_injection_match_set")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sqlInjectionMatchSet:
///     type: aws:wafregional:SqlInjectionMatchSet
///     name: sql_injection_match_set
///     properties:
///       sqlInjectionMatchTuples:
///         - fieldToMatch:
///             type: QUERY_STRING
///           textTransformation: URL_DECODE
///       name: tf-sql_injection_match_set
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAF Regional Sql Injection Match Set using the id. For example:
///
/// ```sh
/// $ pulumi import aws:wafregional/sqlInjectionMatchSet:SqlInjectionMatchSet sql_injection_match_set a1b2c3d4-d5f6-7777-8888-9999aaaabbbbcccc
/// ```
class SqlInjectionMatchSet extends pulumi.CustomResource {
  /// The name or description of the SizeConstraintSet.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The parts of web requests that you want AWS WAF to inspect for malicious SQL code and, if you want AWS WAF to inspect a header, the name of the header.
  late final pulumi.Output<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?> sqlInjectionMatchTuples;

  /// Creates a new [SqlInjectionMatchSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlInjectionMatchSet]. {@macro pulumi_wafregional_sql_injection_match_set_sql_injection_match_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlInjectionMatchSet(
    String name, {
    SqlInjectionMatchSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sqlInjectionMatchSet:SqlInjectionMatchSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sqlInjectionMatchTuples = registerOutput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>('sqlInjectionMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlInjectionMatchSetSqlInjectionMatchTuple>(guardedValue, (value) => SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [SqlInjectionMatchSet] resource's state with the given [name] and [id].
  static SqlInjectionMatchSet get(
    String name,
    pulumi.Input<String> id, {
    SqlInjectionMatchSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SqlInjectionMatchSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SqlInjectionMatchSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafregional/sqlInjectionMatchSet:SqlInjectionMatchSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sqlInjectionMatchTuples = registerOutput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>('sqlInjectionMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlInjectionMatchSetSqlInjectionMatchTuple>(guardedValue, (value) => SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [SqlInjectionMatchSet] resource.
  SqlInjectionMatchSet.reference(String urn)
    : super(
        'aws:wafregional/sqlInjectionMatchSet:SqlInjectionMatchSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sqlInjectionMatchTuples = registerOutput<List<SqlInjectionMatchSetSqlInjectionMatchTuple>?>('sqlInjectionMatchTuples', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlInjectionMatchSetSqlInjectionMatchTuple>(guardedValue, (value) => SqlInjectionMatchSetSqlInjectionMatchTuple.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
