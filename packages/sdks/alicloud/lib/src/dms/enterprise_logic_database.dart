import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_logic_database_args.dart';
import 'enterprise_logic_database_state.dart';

/// Provides a DMS Enterprise Logic Database resource.
///
/// For information about DMS Enterprise Logic Database and how to use it, see [What is Logic Database](https://www.alibabacloud.com/help/en/dms/developer-reference/api-dms-enterprise-2018-11-01-createlogicdatabase).
///
/// > **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.dms.EnterpriseLogicDatabase("default", {
///     alias: "TF_logic_db_test",
///     databaseIds: [
///         "35617919",
///         "35617920",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dms.EnterpriseLogicDatabase("default",
///     alias="TF_logic_db_test",
///     database_ids=[
///         "35617919",
///         "35617920",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Dms.EnterpriseLogicDatabase("default", new()
///     {
///         Alias = "TF_logic_db_test",
///         DatabaseIds = new[]
///         {
///             "35617919",
///             "35617920",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dms.NewEnterpriseLogicDatabase(ctx, "default", &dms.EnterpriseLogicDatabaseArgs{
/// 			Alias: pulumi.String("TF_logic_db_test"),
/// 			DatabaseIds: pulumi.StringArray{
/// 				pulumi.String("35617919"),
/// 				pulumi.String("35617920"),
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
/// import com.pulumi.alicloud.dms.EnterpriseLogicDatabase;
/// import com.pulumi.alicloud.dms.EnterpriseLogicDatabaseArgs;
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
///         var default_ = new EnterpriseLogicDatabase("default", EnterpriseLogicDatabaseArgs.builder()
///             .alias("TF_logic_db_test")
///             .databaseIds(
///                 "35617919",
///                 "35617920")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:dms:EnterpriseLogicDatabase
///     properties:
///       alias: TF_logic_db_test
///       databaseIds:
///         - '35617919'
///         - '35617920'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DMS Enterprise Logic Database can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dms/enterpriseLogicDatabase:EnterpriseLogicDatabase example <id>
/// ```
class EnterpriseLogicDatabase extends pulumi.CustomResource {
  /// Logical Library alias.
  late final pulumi.Output<String> alias;
  /// Sub-Database ID
  late final pulumi.Output<List<String>> databaseIds;
  /// Database type.
  late final pulumi.Output<String> dbType;
  /// Environment type, return value is as follows:-product: production environment-dev: development environment-pre: Advance Environment-test: test environment-sit:SIT environment-uat:UAT environment-pet: Pressure measurement environment-stag:STAG environment
  late final pulumi.Output<String> envType;
  /// Whether it is a logical Library, the return value is true.
  late final pulumi.Output<bool> logic;
  /// The ID of the logical Library.
  late final pulumi.Output<String> logicDatabaseId;
  /// The user ID list of the logical library Owner.
  late final pulumi.Output<List<String>> ownerIdLists;
  /// The nickname list of the logical library Owner.
  late final pulumi.Output<List<String>> ownerNameLists;
  /// Logical Library name.
  late final pulumi.Output<String> schemaName;
  /// Logical library search name.
  late final pulumi.Output<String> searchName;

  /// Creates a new [EnterpriseLogicDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseLogicDatabase]. {@macro pulumi_dms_enterprise_logic_database_enterprise_logic_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseLogicDatabase(
    String name, {
    EnterpriseLogicDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseLogicDatabase:EnterpriseLogicDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.databaseIds = registerOutput<List<String>>('databaseIds');
    this.dbType = registerOutput<String>('dbType');
    this.envType = registerOutput<String>('envType');
    this.logic = registerOutput<bool>('logic');
    this.logicDatabaseId = registerOutput<String>('logicDatabaseId');
    this.ownerIdLists = registerOutput<List<String>>('ownerIdLists');
    this.ownerNameLists = registerOutput<List<String>>('ownerNameLists');
    this.schemaName = registerOutput<String>('schemaName');
    this.searchName = registerOutput<String>('searchName');
  }

  /// Gets an existing [EnterpriseLogicDatabase] resource's state with the given [name] and [id].
  static EnterpriseLogicDatabase get(
    String name,
    pulumi.Input<String> id, {
    EnterpriseLogicDatabaseState? state,
  }) {
    return EnterpriseLogicDatabase._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EnterpriseLogicDatabase._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dms/enterpriseLogicDatabase:EnterpriseLogicDatabase',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String>('alias');
    this.databaseIds = registerOutput<List<String>>('databaseIds');
    this.dbType = registerOutput<String>('dbType');
    this.envType = registerOutput<String>('envType');
    this.logic = registerOutput<bool>('logic');
    this.logicDatabaseId = registerOutput<String>('logicDatabaseId');
    this.ownerIdLists = registerOutput<List<String>>('ownerIdLists');
    this.ownerNameLists = registerOutput<List<String>>('ownerNameLists');
    this.schemaName = registerOutput<String>('schemaName');
    this.searchName = registerOutput<String>('searchName');
  }
}
