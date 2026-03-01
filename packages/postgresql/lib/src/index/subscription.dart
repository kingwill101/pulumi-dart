import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_args.dart';

/// The `postgresql.Subscription` resource creates and manages a publication on a PostgreSQL
/// server.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const subscription = new postgresql.Subscription("subscription", {
///     name: "subscription",
///     conninfo: "host=localhost port=5432 dbname=mydb user=postgres password=postgres",
///     publications: ["publication"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// subscription = postgresql.Subscription("subscription",
///     name="subscription",
///     conninfo="host=localhost port=5432 dbname=mydb user=postgres password=postgres",
///     publications=["publication"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscription = new PostgreSql.Subscription("subscription", new()
///     {
///         Name = "subscription",
///         Conninfo = "host=localhost port=5432 dbname=mydb user=postgres password=postgres",
///         Publications = new[]
///         {
///             "publication",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := postgresql.NewSubscription(ctx, "subscription", &postgresql.SubscriptionArgs{
/// 			Name:     pulumi.String("subscription"),
/// 			Conninfo: pulumi.String("host=localhost port=5432 dbname=mydb user=postgres password=postgres"),
/// 			Publications: pulumi.StringArray{
/// 				pulumi.String("publication"),
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
/// import com.pulumi.postgresql.Subscription;
/// import com.pulumi.postgresql.SubscriptionArgs;
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
///         var subscription = new Subscription("subscription", SubscriptionArgs.builder()
///             .name("subscription")
///             .conninfo("host=localhost port=5432 dbname=mydb user=postgres password=postgres")
///             .publications("publication")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: postgresql:Subscription
///     properties:
///       name: subscription
///       conninfo: host=localhost port=5432 dbname=mydb user=postgres password=postgres
///       publications:
///         - publication
/// ```
///
///
/// ## Postgres documentation
///
/// - https://www.postgresql.org/docs/current/sql-createsubscription.html
class Subscription extends pulumi.CustomResource {
  /// The connection string to the publisher. It should follow the [keyword/value format](https://www.postgresql.org/docs/current/libpq-connect.html#LIBPQ-CONNSTRING)
  late final pulumi.Output<String> conninfo;
  /// Specifies whether the command should create the replication slot on the publisher. Default behavior is true
  late final pulumi.Output<bool?> createSlot;
  /// Which database to create the subscription on. Defaults to provider database.
  late final pulumi.Output<String> database;
  /// The name of the publication.
  late final pulumi.Output<String> name;
  /// Names of the publications on the publisher to subscribe to
  late final pulumi.Output<List<String>> publications;
  /// Name of the replication slot to use. The default behavior is to use the name of the subscription for the slot name
  late final pulumi.Output<String?> slotName;

  /// Creates a new [Subscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subscription]. {@macro pulumi_index_subscription_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subscription(
    String name, {
    SubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/subscription:Subscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.conninfo = registerOutput<String>('conninfo');
    this.createSlot = registerOutput<bool?>('createSlot');
    this.database = registerOutput<String>('database');
    this.name = registerOutput<String>('name');
    this.publications = registerOutput<List<String>>('publications');
    this.slotName = registerOutput<String?>('slotName');
  }
}
